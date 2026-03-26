import 'kaye_attach_sasquatch.dart';

class KayeOptimal {
  late String session;

  late String secret;

  late KayeAttachSasquatch user;

  static KayeOptimal fromJson(Map<String, dynamic> json) {
    return KayeOptimal()
      ..session = json['session']
      ..secret = json['secret']
      ..user = KayeAttachSasquatch.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    return {"session": session, "secret": secret, "user": user.toJson()};
  }
}
