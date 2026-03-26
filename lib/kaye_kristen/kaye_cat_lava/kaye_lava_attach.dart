import '../kaye_goggles/kaye_attach_sasquatch.dart';
import '../kaye_goggles/kaye_sasquatch_trish.dart';

class KayeLavaAttach {
  late String session;

  late String secret;

  late KayeAttachSasquatch user;

  late KayeSasquatchTrish runtime;

  static KayeLavaAttach fromJson(Map<String, dynamic> json) {
    return KayeLavaAttach()
      ..session = json['session']
      ..secret = json['secret']
      ..user = KayeAttachSasquatch.fromJson(json['user'])
      ..runtime = KayeSasquatchTrish.fromJson(json['runtime']);
  }
}
