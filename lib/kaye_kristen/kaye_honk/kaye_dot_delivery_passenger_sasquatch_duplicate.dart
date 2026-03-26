import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_io_barnacle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../kaye_goggles/kaye_attach_sasquatch.dart';
import '../kaye_goggles/kaye_sasquatch_trish.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_classy/kaye_hand.dart';
import '../kaye_barnacle/kaye_sydney_separate.dart';
import '../kaye_barnacle/kaye_monroe_barnacle.dart';
import 'kaye_sydney.dart';

class KayeDotDeliveryPassengerSasquatchDuplicate extends StatefulWidget {
  final KayeSasquatchTrish userRuntime;

  const KayeDotDeliveryPassengerSasquatchDuplicate({
    super.key,
    required this.userRuntime,
  });

  @override
  State<KayeDotDeliveryPassengerSasquatchDuplicate> createState() =>
      _KayeDotDeliveryPassengerSasquatchDuplicateDonna();
}

class _KayeDotDeliveryPassengerSasquatchDuplicateDonna
    extends State<KayeDotDeliveryPassengerSasquatchDuplicate> {
  @override
  Widget build(BuildContext context) {
    KayeAttachSasquatch user = KAYE.user();
    String vipExpireTime = "";
    if (widget.userRuntime.vip()) {
      vipExpireTime = KayeMonroeBarnacle.getFormatDateTime(
        widget.userRuntime.vipExpire!,
        formats: KayeMonroeBarnacle.FORMAT_DATE5,
      );
    }
    return Container(
      margin: const EdgeInsets.only(bottom: 22, left: 24, right: 24),
      width: Get.width - 48,
      height: 78,
      decoration: BoxDecoration(
        color: KayeToddlerBarnacle.white_10p,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: KayeSydneySeparate.kayeChaoticWhoreSydney(
            KayeIOBarnacle.isARLanguage()
                ? "kaye_ten_delivery_sasquatch_duplicate_bg_ar"
                : "kaye_ten_delivery_sasquatch_duplicate_bg",
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Row(
        children: [
          const SizedBox(width: 20),
          KayeSydney.circle(
            url: user.avatarUrl,
            size: 48,
            fit: BoxFit.cover,
            clip: ImageClipType.small,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      constraints: BoxConstraints(maxWidth: Get.width - 200),
                      child: Text(
                        user.nickName,
                        style: KayeCreepDesperate.white18,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 5),
                    KayeSydney.local(
                      fileName: widget.userRuntime.vip()
                          ? "kaye_ten_delivery_disgusting"
                          : "kaye_ten_no_delivery_disgusting",
                      width: 48,
                      height: 20,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                Text(
                  widget.userRuntime.vip()
                      ? "${"kaye_trade_delivery_bottom_consist".tr} $vipExpireTime"
                      : 'kaye_trade_correspond_delivery'.tr,
                  style: KayeCreepDesperate.style(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: widget.userRuntime.vip()
                        ? KayeToddlerBarnacle.white
                        : Colors.white60,
                    height: 0.9,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
