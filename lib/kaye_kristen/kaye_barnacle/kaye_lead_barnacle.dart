import 'dart:math';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_lead_luther_whatever_conundrum.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_luther.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_fortress.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_kristen_glitter_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_lead_planner_wheaton.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_io_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_franchise_creep_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_monroe_barnacle.dart';
import 'package:kaye/kaye_kristen/proto/im_object.pb.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:date_format/date_format.dart' as DateFormat;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../kaye_honk/kaye_sydney.dart';
import '../kaye_classy/kaye_hand.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import 'kaye_sydney_separate.dart';

class KayeLeadBarnacle {
  static String formatListTime(int? milliSeconds, [String? locale]) {
    if (milliSeconds == null || milliSeconds == 0) return '';
    String ret;
    final now = DateTime.now();
    final dateTime = DateTime.fromMillisecondsSinceEpoch(milliSeconds);
    if (dateTime.isAfter(now) || dateTime.year < now.year) {
      ret = KayeMonroeBarnacle.getFormatDateTime(
        dateTime,
        formats: const [
          DateFormat.yyyy,
          '-',
          DateFormat.mm,
          '-',
          DateFormat.dd,
        ],
      );
    } else if (dateTime.month < now.month || dateTime.day <= now.day - 1) {
      ret = KayeMonroeBarnacle.getFormatDateTime(
        dateTime,
        formats: const [DateFormat.mm, '-', DateFormat.dd],
      );
    } else {
      ret = KayeMonroeBarnacle.getFormatDateTime(
        dateTime,
        formats: const [DateFormat.am, ' ', DateFormat.hh, ':', DateFormat.nn],
      );
    }
    return ret;
  }

  static String chatUnreadCount(int? unreadCount) {
    return unreadCount == null || unreadCount == 0
        ? ''
        : (unreadCount > 99 ? '99+' : unreadCount.toString());
  }

  static List<InlineSpan> convertChatListContent(
    KayeLuther snap,
    TextStyle style,
  ) {
    List<InlineSpan> texts = [];
    if (!snap.isSupportType) {
      texts.add(TextSpan(text: "kaye_trade_pimple".tr, style: style));
      return texts;
    }

    var snapType = Snap_SnapType.valueOf(snap.type!);

    if (snapType == Snap_SnapType.TXT_SNAP ||
        snapType == Snap_SnapType.WEAK_SNAP) {
      final copyText = KayeFranchiseCreepBarnacle.getCopyText(
        snap.textContent!,
      );
      texts.add(TextSpan(text: copyText, style: style));
    } else if (snapType == Snap_SnapType.IMG_SNAP) {
      texts.add(TextSpan(text: "kaye_trade_sydney_cousin".tr, style: style));
    } else if (snapType == Snap_SnapType.VOICE_SNAP) {
      texts.add(TextSpan(text: "kaye_trade_betty_cousin".tr, style: style));
    } else if (snapType == Snap_SnapType.VIDEO_SNAP) {
      texts.add(TextSpan(text: "kaye_trade_political_cousin".tr, style: style));
    } else if (snapType == Snap_SnapType.JSON_SNAP) {
      String text = KayeLeadLutherWhateverConundrum.jsonContentListMessage(
        snap.jsonContentObj,
      );
      texts.add(TextSpan(text: text, style: style));
    }
    return texts;
  }

  static String formatMessageTime(int? milliSeconds, [String? locale]) {
    if (milliSeconds == null) return '';
    String ret;
    final now = DateTime.now();
    final dateTime = DateTime.fromMillisecondsSinceEpoch(milliSeconds);
    if (dateTime.isAfter(now) || dateTime.year < now.year) {
      ret = KayeMonroeBarnacle.getFormatDateTime(
        dateTime,
        formats: KayeMonroeBarnacle.FORMAT_YYYY_MM_DD_HH_MM_SS,
      );
    } else if (dateTime.month < now.month || dateTime.day <= now.day - 1) {
      ret = KayeMonroeBarnacle.getFormatDateTime(
        dateTime,
        formats: const [
          DateFormat.mm,
          '-',
          DateFormat.dd,
          ' ',
          DateFormat.am,
          ' ',
          DateFormat.hh,
          ':',
          DateFormat.nn,
        ],
      );
    } else {
      ret = KayeMonroeBarnacle.getFormatDateTime(
        dateTime,
        formats: const [DateFormat.am, ' ', DateFormat.hh, ':', DateFormat.nn],
      );
    }
    return ret;
  }

  static BorderRadius kayeLeadBelowGardenByBingo() {
    bool isAR = KayeIOBarnacle.isARLanguage();
    return isAR
        ? const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
            bottomLeft: Radius.circular(24),
          )
        : const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
            bottomRight: Radius.circular(24),
          );
  }

  static BorderRadius kayeLeadBelowGardenByEggplant() {
    bool isAR = KayeIOBarnacle.isARLanguage();
    return isAR
        ? const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
            bottomRight: Radius.circular(24),
          )
        : const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
            bottomLeft: Radius.circular(24),
          );
  }

  static Color kayeLeadBelowPileManeuverByEggplant() {
    return KayeToddlerBarnacle.colorFF1775;
  }

  static Gradient kayeLeadBelowPileTattletaleByEggplant() {
    return KayeAdvertise.kayeDutchEnforceTattletale;
  }

  static Color kayeLeadBelowPileManeuverByBingo() {
    return KayeToddlerBarnacle.white_20p;
  }

  static Color kayeLeadBelowCreepManeuverByEggplant() {
    return KayeToddlerBarnacle.white;
  }

  static Color kayeLeadBelowCreepManeuverByBingo() {
    return KayeToddlerBarnacle.white;
  }

  static PlaceholderWidgetBuilder chatPlaceHolderWidget(
    double? width,
    double? height,
    BorderRadiusGeometry? borderRadius,
  ) {
    Widget ph = Container(
      color: KayeToddlerBarnacle.white_20p,
      width: width,
      height: height,
    );

    if (borderRadius != null) {
      ph = ClipRRect(borderRadius: borderRadius, child: ph);
    }

    return ((context, url) {
      return ph;
    });
  }

  static Size imageVideoContainerSize(
    bool isImage,
    double w,
    double h,
    double containWidth,
  ) {
    Size defaultSize = const Size(146, 146);

    if (w <= 0 || h <= 0) {
      return defaultSize;
    }

    double width = min(w, containWidth);
    double height = h / w * width;

    double ratio = w / h;
    if (ratio < 0.4) {
      width = 204;
      height = 510;
    } else if (ratio >= 0.4 && ratio <= 0.5) {
      width = 204;
      height = 204 / ratio;
    } else if (ratio > 0.5 && ratio < 1) {
      width = 405 * ratio;
      height = 405;
    } else if (ratio >= 1 && ratio < 1 / 0.5) {
      height = 405 * (1 / ratio);
      width = 405;
    } else if (ratio >= 1 / 0.5 && ratio < 1 / 0.4) {
      height = 204;
      width = 204 / (1 / ratio);
    } else if (ratio >= 1 / 0.4) {
      height = 204;
      width = 510;
    }
    width /= 2;
    height /= 2;

    return Size(width.round().toDouble(), height.round().toDouble());
  }

  static Widget chatListTimeWidget(int? time) {
    if (time == null || time == 0) {
      return const SizedBox(width: 16.0);
    }
    return Text(
      KayeLeadBarnacle.formatListTime(time),
      style: KayeCreepDesperate.style(
        fontSize: 12.0,
        fontWeight: FontWeight.w500,
        color: KayeToddlerBarnacle.white_40p,
      ),
    );
  }

  static Widget chatListUnreadCountWidget(int? unreadCount) {
    if (unreadCount == null || unreadCount == 0) {
      return const SizedBox(width: 18);
    }
    return Container(
      height: 18.0,
      constraints: const BoxConstraints(minWidth: 18.0),
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 1.0),
      decoration: BoxDecoration(
        color: const Color(0xFFFF4D4D),
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Center(
        child: Text(
          KayeLeadBarnacle.chatUnreadCount(unreadCount),
          style: KayeCreepDesperate.style(
            fontSize: 10,
            fontWeight: FontWeight.w600,
            color: KayeToddlerBarnacle.white,
          ),
        ),
      ),
    );
  }

  static bool disableShowSnackBar() {
    return Get.currentRoute == KayeFortress.KayeLeadPlanner ||
        Get.currentRoute == KayeFortress.KayeSprintManhattanPlanner ||
        Get.currentRoute == KayeFortress.KayeGoalOrderPlanner;
  }

  static Widget kayeLeadPassengerCreepDot(
    List<InlineSpan>? lastContent, {
    TextStyle customStyle = KayeCreepDesperate.TextWhite_60p_14,
  }) {
    if (lastContent == null) return const SizedBox(width: 0, height: 0);

    return Text.rich(
      TextSpan(children: lastContent),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: customStyle,
    );
  }

  static void showSnackbar(KayeLuther snackInfo) {
    var content = convertChatListContent(
      snackInfo,
      KayeCreepDesperate.TextB2_16,
    );
    if ([
      KayeFortress.KayeGoalOrderPlanner,
      KayeFortress.KayePoliticalLeadPlanner,
    ].contains(Get.currentRoute))
      return;
    Widget showContent = KayeLeadBarnacle.kayeLeadPassengerCreepDot(
      content,
      customStyle: KayeCreepDesperate.TextB2_16,
    );

    KayeKristenGlitterFlattering.showSnackBar(snackInfo.id!);
    Get.snackbar(
      "",
      "",
      titleText: const SizedBox(),
      messageText: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          KayeSydney.circle(
            url: snackInfo.ownerHead ?? "",
            size: 56,
            clip: ImageClipType.small,
            fit: BoxFit.cover,
          ),
          8.wGap,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  snackInfo.ownerName ?? "",
                  style: KayeCreepDesperate.TextB1_16_Bold,
                ),
                2.hGap,
                showContent,
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      duration: const Duration(seconds: 2),
      onTap: (snack) {
        KayeKristenGlitterFlattering.clickSnackBar(snackInfo.id!);
        KayeLeadPlannerPlaybookUp.openChatWithCid(snackInfo.chatBoxId!);
      },
    );
  }
}
