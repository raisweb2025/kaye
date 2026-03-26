package com.kaye.yex

import android.content.Context
import android.os.Build
import android.os.Process
import android.util.Log
import java.io.Closeable
import java.io.File
import java.io.FileOutputStream
import java.io.IOException
import java.io.PrintWriter
import java.io.StringWriter
import java.lang.Thread.UncaughtExceptionHandler
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import java.util.concurrent.Executors

class CrashHandler private constructor() {

    companion object {
        private const val TAG = "CrashHandler"
        private const val CRASH_DIR_NAME = "Crashes"
        private const val CRASH_FILE_PREFIX = "crash_"
        private const val CRASH_FILE_EXT = ".log"

        @JvmStatic
        val instance: CrashHandler by lazy {
            CrashHandler()
        }
    }

    private lateinit var context: Context
    private var defaultHandler: UncaughtExceptionHandler? = null
    private val executor = Executors.newSingleThreadExecutor()

    fun initialize(context: Context) {
        this.context = context.applicationContext
        setupJavaExceptionHandler()
        Log.i(TAG, "Crash handler initialized")
    }

    private fun setupJavaExceptionHandler() {
        defaultHandler = Thread.getDefaultUncaughtExceptionHandler()
        Thread.setDefaultUncaughtExceptionHandler { thread, throwable ->
            handleException(throwable, "Java")

            defaultHandler?.uncaughtException(thread, throwable)
        }
    }

    private fun getCrashDirectory(): File {
        val crashDir = File(context.filesDir, CRASH_DIR_NAME)
        if (!crashDir.exists()) {
            crashDir.mkdirs()
        }
        return crashDir
    }

    private fun handleException(throwable: Throwable, type: String) {
        Log.i(TAG, "handleException")
        executor.submit {
            Log.i(TAG, "handleException collectCrashInfo")
            try {
                val crashInfo = collectCrashInfo(throwable, type)
                saveCrashLog(crashInfo)
            } catch (e: Exception) {
                Log.e(TAG, "Failed to handle exception", e)
            }
        }
    }

    private fun collectCrashInfo(throwable: Throwable, type: String): String {
        val throwableSW = StringWriter()
        val pw = PrintWriter(throwableSW)
        throwable.printStackTrace(pw)
        val br = "<br />"

        val sb = StringBuilder()

        sb.append("=== ").append(type).append(" Crash Report ===").append(br)
        sb.append("Timestamp: ").append(getCurrentTime()).append(br)
        sb.append("Process ID: ").append(Process.myPid()).append(br)

        sb.append("=== Device Information ===").append(br)
        sb.append("Brand: ").append(Build.BRAND).append(br)
        sb.append("Model: ").append(Build.MODEL).append(br)
        sb.append("Device: ").append(Build.DEVICE).append(br)
        sb.append("Android SDK: ").append(Build.VERSION.SDK_INT).append(br)
        sb.append("Android Release: ").append(Build.VERSION.RELEASE).append(br)
        sb.append("Fingerprint: ").append(Build.FINGERPRINT).append(br)

        sb.append("=== Exception Details ===").append(br)
        sb.append("Type: ").append(throwable::class.java.name).append(br)
        sb.append("Message: ").append(throwable.message ?: "null").append(br)

        sb.append("=== Stack Trace ===").append(br)
        sb.append(throwableSW.toString()).append(br)

        Log.i(TAG, "collectCrashInfo :$sb")
        return sb.toString().replace("\n", "<br />")
    }

    private fun saveCrashLog(crashInfo: String) {
        var outputStream: FileOutputStream? = null
        try {
            val crashDir = getCrashDirectory()
            val timestamp = SimpleDateFormat("yyyyMMdd_HHmmss_SSS", Locale.getDefault())
                .format(Date())
            val fileName = CRASH_FILE_PREFIX + timestamp + CRASH_FILE_EXT
            val crashFile = File(crashDir, fileName)

            outputStream = FileOutputStream(crashFile)
            outputStream.write(crashInfo.toByteArray())
            outputStream.flush()

            Log.i(TAG, "Crash log saved: ${crashFile.absolutePath}")

            cleanupOldCrashLogs()

        } catch (e: Exception) {
            Log.e(TAG, "Failed to save crash log", e)
        } finally {
            outputStream?.closeQuietly()
        }
    }

    private fun cleanupOldCrashLogs() {
        try {
            val crashDir = getCrashDirectory()
            val files = crashDir.listFiles() ?: return

            val sevenDaysAgo = Date().time - (7 * 24 * 60 * 60 * 1000)

            for (file in files) {
                if (file.lastModified() < sevenDaysAgo) {
                    file.delete()
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to cleanup old crash logs", e)
        }
    }

    private fun getCrashLogs(): List<File> {
        val crashDir = getCrashDirectory()
        val files = crashDir.listFiles() ?: return emptyList()
        return files.sortedByDescending { it.lastModified() }
    }

    fun getCrashLogsAsText(): List<String> {
        return getCrashLogs().mapNotNull { file ->
            try {
                file.readText()
            } catch (e: Exception) {
                null
            }
        }
    }

    fun getLatestCrashLog(): String? {
        return getCrashLogsAsText().firstOrNull()
    }

    fun clearCrashLogs(): Boolean {
        try {
            val crashDir = getCrashDirectory()
            val files = crashDir.listFiles() ?: return true

            var success = true
            for (file in files) {
                if (!file.delete()) {
                    success = false
                }
            }
            return success
        } catch (e: Exception) {
            Log.e(TAG, "Failed to clear crash logs", e)
            return false
        }
    }

    private fun getCurrentTime(): String {
        return SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.getDefault())
            .format(Date())
    }

    /**
     * 测试方法：触发一个异常（仅用于测试）
     */
    fun triggerTestCrash(activity: MainActivity) {
        activity.window.decorView.postDelayed({
            val nullString: String? = null
            nullString!!.length
        }, 3000)

    }
}

private fun Closeable.closeQuietly() {
    try {
        this.close()
    } catch (e: IOException) {
    }
}
