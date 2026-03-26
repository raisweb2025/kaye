import 'dart:collection';
import 'dart:io';

import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_moisture_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_mason/kaye_stroke.dart';

class KayeConcernedPlayhouse extends StatelessWidget {
  final GlobalKey webViewKey = GlobalKey();

  late final InAppWebViewController? webViewController;
  late final InAppWebViewSettings settings;

  PullToRefreshController? pullToRefreshController;

  late final void Function(InAppWebViewController controller, String? title)?
  onTitleChanged;
  late void Function() onNativeClose;

  late int _startTime;
  late final void Function(bool isSuccess, int duration, String errorMessage)?
  onLoadResult;

  late final String url;

  final bool pullToRefresh;

  final bool miniCardMode;

  String? userAgent;

  KayeConcernedPlayhouse({
    super.key,
    required this.url,
    this.onTitleChanged,
    Function()? onNativeClose,
    this.onLoadResult,
    this.pullToRefresh = false,
    this.miniCardMode = false,
    this.userAgent,
  }) {
    _startTime = DateTime.now().millisecondsSinceEpoch;

    settings = InAppWebViewSettings(
      isInspectable: false,
      mediaPlaybackRequiresUserGesture: false,
      allowsInlineMediaPlayback: true,
      iframeAllow: "camera; microphone",
      disableLongPressContextMenuOnLinks: true,
      disableContextMenu: true,
      disableHorizontalScroll: false,
      disableVerticalScroll: false,
      overScrollMode: OverScrollMode.NEVER,
      userAgent: userAgent ?? KAYE.deviceService.getClientInfo().userAgent,
      iframeAllowFullscreen: false,
    );

    if (pullToRefresh) {
      pullToRefreshController = PullToRefreshController(
        settings: PullToRefreshSettings(color: Colors.blue),
        onRefresh: () async {
          if (Platform.isAndroid) {
            webViewController?.reload();
          } else {
            webViewController?.loadUrl(
              urlRequest: URLRequest(url: await webViewController?.getUrl()),
            );
          }
        },
      );
    }

    this.onNativeClose = onNativeClose ?? Get.back;
  }

  @override
  Widget build(BuildContext context) {
    return InAppWebView(
      key: webViewKey,
      initialUrlRequest: URLRequest(url: WebUri(url)),
      initialUserScripts: UnmodifiableListView<UserScript>([]),
      initialSettings: settings,
      pullToRefreshController: pullToRefreshController,
      onWebViewCreated: onWebViewCreated,
      onLoadStart: onLoadStart,
      onPermissionRequest: onPermissionRequest,
      shouldOverrideUrlLoading: shouldOverrideUrlLoading,
      onLoadStop: onLoadStop,
      onReceivedError: onReceivedError,
      onProgressChanged: onProgressChanged,
      onUpdateVisitedHistory: onUpdateVisitedHistory,
      onConsoleMessage: onConsoleMessage,
      onTitleChanged: onTitleChanged,
    );
  }

  void onWebViewCreated(controller) async {
    webViewController = controller;
    webViewController?.addJavaScriptHandler(
      handlerName: 'native_close',
      callback: (args) {
        onNativeClose();
      },
    );
    webViewController?.addJavaScriptHandler(
      handlerName: 'goto',
      callback: (args) {
        KAYE.goto(args as String);
      },
    );
  }

  void onLoadStart(controller, url) async {
    _startTime = DateTime.now().millisecondsSinceEpoch;
  }

  Future<PermissionResponse> onPermissionRequest(controller, request) async {
    return PermissionResponse(
      resources: request.resources,
      action: PermissionResponseAction.GRANT,
    );
  }

  Future<NavigationActionPolicy> shouldOverrideUrlLoading(
    controller,
    navigationAction,
  ) async {
    var uri = navigationAction.request.url!;

    List<String> webViewInAppSchemeList = [
      "http",
      "https",
      "file",
      "chrome",
      "data",
      "javascript",
      "about",
    ];

    if (!KayeWrestlingBarnacle.isEmpty(
      KAYE.kayeClosing.webViewInAppSchemeList(),
    )) {
      webViewInAppSchemeList = KAYE.kayeClosing.webViewInAppSchemeList();
    }

    if (!webViewInAppSchemeList.contains(uri.scheme)) {
      try {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } catch (e, stack) {
        KayeKristenGlitterFlattering.kayeSendWasher(20010, e, stack);
      }
      return NavigationActionPolicy.CANCEL;
    }

    return NavigationActionPolicy.ALLOW;
  }

  void onLoadStop(controller, url) async {
    pullToRefreshController?.endRefreshing();
    String js =
        '''
        window.WebViewJavascriptBridge=window.flutter_inappwebview; 
        window.WebViewJavascriptBridge.init = function(){};
        window.sessionId = "${KAYE.kayeOptimal?.session}";
        window.signKey = "${KAYE.kayeOptimal?.secret}"; 
        window.lang = "${KAYE.deviceService.getClientInfo().lang}";
        document.dispatchEvent(new Event('WebViewJavascriptBridgeReady'));
        ''';
    controller.evaluateJavascript(source: js);

    int durationTime =
        (DateTime.now().millisecondsSinceEpoch - _startTime) ~/ 1000;
    if (onLoadResult != null) {
      onLoadResult!(true, durationTime, "");
    }
  }

  void onReceivedError(controller, request, error) {
    pullToRefreshController?.endRefreshing();

    int durationTime =
        (DateTime.now().millisecondsSinceEpoch - _startTime) ~/ 1000;
    if (onLoadResult != null) {
      onLoadResult!(false, durationTime, error.toString());
    }
  }

  void onProgressChanged(controller, progress) {
    if (progress == 100) {
      pullToRefreshController?.endRefreshing();
    }
  }

  void onUpdateVisitedHistory(controller, url, isReload) {}

  void onConsoleMessage(controller, consoleMessage) {}
}
