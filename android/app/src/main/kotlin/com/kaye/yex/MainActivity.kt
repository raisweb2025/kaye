package com.kaye.yex

import android.os.Bundle
import com.android.installreferrer.api.InstallReferrerClient
import com.android.installreferrer.api.InstallReferrerStateListener
import com.android.installreferrer.api.ReferrerDetails
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import net.aihelp.config.ConversationConfig
import net.aihelp.config.FaqConfig
import net.aihelp.config.UserConfig
import net.aihelp.config.enums.ConversationIntent
import net.aihelp.config.enums.ShowConversationMoment
import net.aihelp.init.AIHelpSupport
import android.content.Intent
import android.provider.Settings
import android.net.Uri

class MainActivity : FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
    }

    override fun onDestroy() {
        super.onDestroy()
    }

    var methodChannel: MethodChannel? = null

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        methodChannel = MethodChannel(
            flutterEngine.getDartExecutor().getBinaryMessenger(),
            "com.kaye.yex.channel"
        )
        methodChannel?.setMethodCallHandler { call, result ->
            if (call.method.equals("showQA")) {
                try {
                    var ucode = call.argument<String?>("ucode")
                    var nickName = call.argument<String?>("nickName")
                    var ai_help_domain = call.argument<String>("qa_domain")!!
                    var ai_help_app_key = call.argument<String>("qa_app_key")!!
                    var ai_help_app_id = call.argument<String>("qa_app_id")!!
                    var show_dialog = call.argument<String>("qa_app_show_dialog")!!
                    configAiHelp(ai_help_domain, ai_help_app_key, ai_help_app_id, ucode, nickName,show_dialog)
                    result.success("showQA")
                } catch (e: Exception) {
                }
            } else if (call.method.equals("getInstallReferrer")) {
                try {
                    getInstallReferrer()
                } catch (e: Exception) {
                }
            } else if (call.method.equals("notifySetting")) {
                try {
                    openNotificationSettings()
                    result.success(null)
                } catch (e: Exception) {
                }
            } else if (call.method.equals("getLatestCrashLog")) {
                try {
                    val log = CrashHandler.instance.getLatestCrashLog()
                    result.success(log)
                } catch (e: Exception) {
                    result.error("GET_LOG_FAILED", e.message, null)
                }
            } else if (call.method.equals("clearCrashLogs")) {
                try {
                    val success = CrashHandler.instance.clearCrashLogs()
                    result.success(success)
                } catch (e: Exception) {
                    result.error("CLEAR_LOGS_FAILED", e.message, null)
                }
            } else if (call.method.equals("triggerTestCrash")) {
                try {
                    CrashHandler.instance.triggerTestCrash(this)
                    result.success(true)
                } catch (e: Exception) {
                    result.error("TEST_CRASH_FAILED", e.message, null)
                }
            } else {
                result.notImplemented()
            }
        }
    }


    private fun openNotificationSettings() {

        try {
            val intent = Intent()
            intent.action = Settings.ACTION_APP_NOTIFICATION_SETTINGS

            intent.putExtra(Settings.EXTRA_APP_PACKAGE, "com.kaye.yex")
            intent.putExtra(Settings.EXTRA_CHANNEL_ID, "com.kaye.yex");
            startActivity(intent);
        } catch (e: Exception) {
            e.printStackTrace();
            val intent = Intent()
            intent.setAction(Settings.ACTION_APPLICATION_DETAILS_SETTINGS)
            intent.setData(Uri.fromParts("package", "com.kaye.yex", null));
            startActivity(intent);
        }
    }

    var aiHelpAppId: String? = null
    fun configAiHelp(
        ai_help_domain: String,
        ai_help_app_key: String,
        ai_help_app_id: String,
        ucode: String?,
        nickName: String?,
        show_dialog: String?
    ) {
        if (ai_help_app_id.equals(aiHelpAppId) && show_dialog.equals("1")) {
            showQASection(ucode, nickName)
            return
        }
        aiHelpAppId = ai_help_app_id
        AIHelpSupport.enableLogging(true)
        AIHelpSupport.init(
            this,
            ai_help_app_key,
            ai_help_domain,
            ai_help_app_id
        )
        AIHelpSupport.setOnAIHelpInitializedCallback {
            if (show_dialog.equals("1")) {
                showQASection(ucode, nickName)
            }
        }
    }

    private fun showQASection(ucode: String?, nickName: String?) {
        val faqConversationConfig = ConversationConfig.Builder()
            .setConversationIntent(ConversationIntent.BOT_SUPPORT)
            .setAlwaysShowHumanSupportButtonInBotPage(true)
            .build()
        FaqConfig.Builder()
            .setShowConversationMoment(ShowConversationMoment.ALWAYS)
            .setConversationConfig(faqConversationConfig)
            .build()
        AIHelpSupport.showConversation(faqConversationConfig)

        val userConfig = UserConfig.Builder()
            .setUserId(ucode)
            .setUserName(nickName)
            .build()
        AIHelpSupport.updateUserInfo(userConfig)
    }

    private var mReferrerClient: InstallReferrerClient? = null
    private fun getInstallReferrer() {

        if (mReferrerClient == null) {
            mReferrerClient = InstallReferrerClient.newBuilder(this).build()
        }

        mReferrerClient!!.startConnection(object : InstallReferrerStateListener {
            override fun onInstallReferrerSetupFinished(responseCode: Int) {
                when (responseCode) {
                    InstallReferrerClient.InstallReferrerResponse.OK ->
                        try {
                            /**
                             * utm_source:   广告系列来源，用于确定具体的搜索引擎、简报或其他来源
                             * utm_medium:   广告系列媒介，用于确定电子邮件或采用每次点击费用 (CPC) 的广告等媒介
                             * utm_term:     广告系列字词，用于付费搜索，为广告提供关键字
                             * utm_content:  广告系列内容，用于 A/B 测试和内容定位广告，以区分指向相同网址的不同广告或链接
                             * utm_campaign: 广告系列名称，用于关键字分析，以标识具体的产品推广活动或战略广告系列
                             * gclid:        Google Ads 自动标记参数，用于衡量广告。此值会动态生成，请勿修改
                             */

                            val response: ReferrerDetails = mReferrerClient!!.installReferrer
                            val installReferrer = response.installReferrer
                            val arguments: MutableMap<String, Any> = HashMap()
                            arguments["installReferrer"] = installReferrer
                            methodChannel?.invokeMethod("installReferrer", arguments)
                        } catch (e: Exception) {
                            e.printStackTrace()
                        }

                    InstallReferrerClient.InstallReferrerResponse.FEATURE_NOT_SUPPORTED -> {}

                    InstallReferrerClient.InstallReferrerResponse.SERVICE_UNAVAILABLE -> {}
                }
                mReferrerClient?.endConnection()
            }

            override fun onInstallReferrerServiceDisconnected() {
            }
        })
    }
}
