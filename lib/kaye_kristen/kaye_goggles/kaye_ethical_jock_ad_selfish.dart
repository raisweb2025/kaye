import '../proto/StringTranslate.dart';

class KayeGogglesJockAdSelfish {
  KayeGogglesJockAdSelfish([
    this.trackerToken,
    this.trackerName,
    this.network,
    this.campaign,
    this.adgroup,
    this.creative,
    this.clickLabel,
    this.adid,
    this.costType,
    this.costAmount,
    this.costCurrency,
  ]);

  String? trackerToken;
  String? trackerName;
  String? network;
  String? campaign;
  String? adgroup;
  String? creative;
  String? clickLabel;
  String? adid;
  String? costType;
  String? costAmount;
  String? costCurrency;

  factory KayeGogglesJockAdSelfish.fromJson(Map<String, dynamic> json) {
    return KayeGogglesJockAdSelfish(
      json[StringTranslate.e2z("utt")] as String?,
      json[StringTranslate.e2z("ntn")] as String?,
      json[StringTranslate.e2z("uneut")] as String?,
      json[StringTranslate.e2z("ncaum")] as String?,
      json[StringTranslate.e2z("badbg")] as String?,
      json[StringTranslate.e2z("bcrbe")] as String?,
      json[StringTranslate.e2z("bcl")] as String?,
      json[StringTranslate.e2z("iadnid")] as String?,
      json[StringTranslate.e2z("ict")] as String?,
      json[StringTranslate.e2z("uca")] as String?,
      json[StringTranslate.e2z("fcc")] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      StringTranslate.e2z("ftt"): trackerToken,
      StringTranslate.e2z("btn"): trackerName,
      StringTranslate.e2z("fneut"): network,
      StringTranslate.e2z("ucanm"): campaign,
      StringTranslate.e2z("nadug"): adgroup,
      StringTranslate.e2z("ucrue"): creative,
      StringTranslate.e2z("ncl"): clickLabel,
      StringTranslate.e2z("nadiid"): adid,
      StringTranslate.e2z("ict"): costType,
      StringTranslate.e2z("ica"): costAmount,
      StringTranslate.e2z("ucc"): costCurrency,
    };
  }
}
