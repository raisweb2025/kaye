import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeGogglesDeliveryBladderDrove {
  late String img;
  late String title;
  late String desc;
  late String bigCardImg;
  late String smallCardImg;

  KayeGogglesDeliveryBladderDrove();

  factory KayeGogglesDeliveryBladderDrove.fromJson(Map<String, dynamic> json) =>
      KayeGogglesDeliveryBladderDrove()
        ..img = KayeMoistureBarnacle.strDef(json, "img", "")
        ..title = KayeMoistureBarnacle.strDef(json, "title", "")
        ..desc = KayeMoistureBarnacle.strDef(json, "desc", "")
        ..bigCardImg = KayeMoistureBarnacle.strDef(json, "big_card_img", "")
        ..smallCardImg = KayeMoistureBarnacle.strDef(
          json,
          "small_card_img",
          "",
        );
}
