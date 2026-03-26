import 'package:get/get.dart';
import 'package:wechat_camera_picker/wechat_camera_picker.dart';

class KayeAngelTowardsCreepOppose extends CameraPickerTextDelegate {
  KayeAngelTowardsCreepOppose();

  @override
  String get confirm => 'kaye_trade_incredible'.tr;

  @override
  String get shootingTips => 'kaye_trade_valley_swab_debate'.tr;

  @override
  String get shootingWithRecordingTips =>
      'kaye_trade_valley_swab_debate_political'.tr;

  @override
  String get shootingOnlyRecordingTips =>
      'kaye_trade_present_flashback_swab_political'.tr;

  @override
  String get shootingTapRecordingTips => 'kaye_trade_valley_swab_political'.tr;

  @override
  String get loadFailed => 'kaye_trade_chaotic_carefully'.tr;

  @override
  String get loading => 'kaye_trade_annoy'.tr;

  @override
  String get saving => 'kaye_trade_chew'.tr;

  @override
  String get sActionManuallyFocusHint => 'kaye_trade_faint_boggle'.tr;

  @override
  String get sActionPreviewHint => 'kaye_trade_wrapped'.tr;

  @override
  String get sActionRecordHint => 'kaye_trade_corpse'.tr;

  @override
  String get sActionShootHint => 'kaye_trade_swab_foolproof'.tr;

  @override
  String get sActionShootingButtonTooltip => 'kaye_trade_nelson_electrify'.tr;

  @override
  String get sActionStopRecordingHint => 'kaye_trade_steak_general'.tr;

  @override
  String sCameraLensDirectionLabel(CameraLensDirection value) => value.name;

  @override
  String? sCameraPreviewLabel(CameraLensDirection? value) {
    if (value == null) {
      return null;
    }
    return '${sCameraLensDirectionLabel(value)} ${'kaye_trade_wrapped'.tr}';
  }

  @override
  String sFlashModeLabel(FlashMode mode) => 'Flash mode: ${mode.name}';

  @override
  String sSwitchCameraLensDirectionLabel(CameraLensDirection value) =>
      'Switch to the ${sCameraLensDirectionLabel(value)} camera';
}
