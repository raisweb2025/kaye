import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:get/get.dart';

import '../kaye_mason/kaye_stroke.dart';

class KayeRTCFlattering {
  bool isEngineInitialized = false;

  KayeRTCFlattering._internal();

  static KayeRTCFlattering? _instance;

  static KayeRTCFlattering get instance => _getInstance();

  factory KayeRTCFlattering() => _getInstance();

  static KayeRTCFlattering _getInstance() {
    return _instance ??= KayeRTCFlattering._internal();
  }

  late RtcEngine engine;

  Future<void> init() async {
    engine = createAgoraRtcEngine();

    await engine.initialize(
      RtcEngineContext(
        appId: KAYE.kayeClosing.configs.agoraAppId,
        channelProfile: ChannelProfileType.channelProfileCommunication,
      ),
    );

    await engine.setVideoEncoderConfiguration(
      VideoEncoderConfiguration(
        dimensions: VideoDimensions(
          width: KAYE.kayeClosing.configs.aWidth,
          height: KAYE.kayeClosing.configs.aHeight,
        ),
        frameRate: KAYE.kayeClosing.configs.aFrameRate,
        bitrate: standardBitrate,
        orientationMode: OrientationMode.orientationModeFixedPortrait,
        degradationPreference: DegradationPreference.maintainBalanced,
      ),
    );
    await engine.enableVideo();
    await engine.enableAudio();
    await engine.enableLocalVideo(true);

    await engine.setBeautyEffectOptions(
      enabled: true,
      options: const BeautyOptions(
        lighteningContrastLevel:
            LighteningContrastLevel.lighteningContrastNormal,
        lighteningLevel: 0.7,
        smoothnessLevel: 0.5,
        rednessLevel: 0.1,
      ),
    );

    isEngineInitialized = true;
  }

  RtcEngine getRtcEngine() {
    return engine;
  }

  initChatCallWork() async {
    await engine.leaveChannel();
    await engine.setChannelProfile(
      ChannelProfileType.channelProfileCommunication,
    );
    await engine.setVideoEncoderConfiguration(
      VideoEncoderConfiguration(
        dimensions: VideoDimensions(
          width: KAYE.kayeClosing.configs.aWidth,
          height: KAYE.kayeClosing.configs.aHeight,
        ),
        frameRate: KAYE.kayeClosing.configs.aFrameRate,
        bitrate: standardBitrate,
        orientationMode: OrientationMode.orientationModeFixedPortrait,
        degradationPreference: DegradationPreference.maintainBalanced,
      ),
    );
    await engine.enableVideo();
    await engine.enableAudio();
    await engine.enableLocalVideo(true);
  }

  Future<void> joinChatCallChannel(
    String channelToken,
    String channelName,
  ) async {
    initChatCallWork();
    ChannelMediaOptions channelMediaOptions = const ChannelMediaOptions(
      autoSubscribeVideo: true,
      autoSubscribeAudio: true,
      publishCameraTrack: true,
      publishMicrophoneTrack: true,
      clientRoleType: ClientRoleType.clientRoleBroadcaster,
    );

    await engine.joinChannel(
      token: channelToken,
      channelId: channelName,
      options: channelMediaOptions,
      uid: KAYE.uCodeInt(),
    );
  }

  initLiveWork() async {
    await engine.leaveChannel();
    await engine.setChannelProfile(
      ChannelProfileType.channelProfileLiveBroadcasting,
    );
    await engine.setClientRole(role: ClientRoleType.clientRoleAudience);
    await engine.setVideoEncoderConfiguration(
      VideoEncoderConfiguration(
        dimensions: VideoDimensions(
          width: KAYE.kayeClosing.configs.aWidth,
          height: KAYE.kayeClosing.configs.aHeight,
        ),
        frameRate: KAYE.kayeClosing.configs.aFrameRate,
        bitrate: standardBitrate,
        orientationMode: OrientationMode.orientationModeFixedPortrait,
        degradationPreference: DegradationPreference.maintainBalanced,
      ),
    );
    await engine.enableVideo();
    await engine.enableAudio();
    await engine.enableLocalVideo(true);
  }

  joinLiveChannel(String channelToken, String channelName) async {
    initLiveWork();
    ChannelMediaOptions channelMediaOptions = const ChannelMediaOptions(
      autoSubscribeVideo: true,
      autoSubscribeAudio: true,
      publishCameraTrack: false,
      publishMicrophoneTrack: false,
      clientRoleType: ClientRoleType.clientRoleAudience,
    );

    await engine.joinChannel(
      token: channelToken,
      channelId: channelName,
      options: channelMediaOptions,
      uid: KAYE.uCodeInt(),
    );
  }

  void dispose() {
    engine.leaveChannel();
    engine.release();
  }

  Future<void> controlAudio(bool isOpen) async {
    if (isOpen) {
      await engine.enableAudio();
    } else {
      await engine.disableAudio();
    }
  }

  Future<void> controlPreview(bool showPreView) async {
    if (showPreView) {
      await engine.startPreview();
    } else {
      await engine.stopPreview();
    }
  }

  void leaveChannel() {
    engine.leaveChannel();
  }

  void switchCamera() {
    engine.switchCamera();
  }

  void registerEventHandler(RtcEngineEventHandler rtcEngineEventHandler) {
    try {
      engine.registerEventHandler(rtcEngineEventHandler);
    } catch (e) {}
  }

  void removeEventHandler(RtcEngineEventHandler rtcEngineEventHandler) {
    try {
      engine.unregisterEventHandler(rtcEngineEventHandler);
    } catch (e) {}
  }

  void release() {
    engine.release();
    _instance = null;
  }
}
