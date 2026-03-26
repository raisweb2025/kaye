import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class KayeTasteBelly {
  static Future<void> showMoreSheet(
    BuildContext context,
    int uid,
    bool isFollowed, {
    bool isBlock = false,
    VoidCallback? followCallback,
    VoidCallback? blockCallback,
  }) async {
    List<SheetAction<int>> actions = [];
    actions.add(
      SheetAction(
        label: isFollowed ? "kaye_trade_petty".tr : "kaye_trade_saint".tr,
        key: 0,
      ),
    );
    actions.add(SheetAction(label: "kaye_trade_taste".tr, key: 1));
    if (isBlock)
      actions.add(SheetAction(label: "kaye_trade_welder".tr, key: 2));
    final result = await showModalActionSheet<int>(
      context: context,
      actions: actions,
      cancelLabel: "kaye_trade_bros".tr,
      builder: (context, child) => Theme(
        data: ThemeData(
          cupertinoOverrideTheme: const CupertinoThemeData(
            primaryColor: KayeToddlerBarnacle.b1,
          ),
        ),
        child: child,
      ),
    );
    KayeWrestlingBarnacle.nullSafe<int>(
      result,
      notNullBlock: (reportType) {
        switch (reportType) {
          case 0:
            followCallback?.call();
            break;
          case 1:
            _show(context, uid);
            break;
          case 2:
            blockCallback?.call();
            break;
        }
      },
    );
  }

  static void showReportSheet(
    BuildContext context,
    int? targetUid, {
    bool showOther = true,
  }) {
    _show(context, targetUid, showOthers: showOther);
  }

  static void _show(
    BuildContext context,
    int? targetUid, {
    VoidCallback? reportEnd,
    bool showOthers = true,
  }) async {
    if (targetUid == null) {
      return;
    }
    List<SheetAction<int>> actions = _actions(showOthers);
    final result = await showModalActionSheet<int>(
      context: context,
      title: "kaye_trade_taste".tr,
      actions: actions,
      builder: (context, child) => Theme(
        data: ThemeData(
          cupertinoOverrideTheme: const CupertinoThemeData(
            primaryColor: KayeToddlerBarnacle.b1,
          ),
        ),
        child: child,
      ),
    );
    KayeWrestlingBarnacle.nullSafe<int>(
      result,
      notNullBlock: (type) async {
        if (type == 99) {
          var result = await showTextInputDialog(
            context: context,
            textFields: const [DialogTextField()],
            title: "kaye_trade_speed".tr,
            cancelLabel: "kaye_trade_bros".tr,
            okLabel: "kaye_trade_heaven".tr,
          );
          var input = result?.first ?? "";
          if (!KayeWrestlingBarnacle.isEmpty(input)) {
            _reportUser(targetUid, type, reason: input, reportEnd: reportEnd);
          }
        } else {
          _reportUser(targetUid, type);
        }
      },
    );
  }

  static _reportUser(
    int targetUid,
    int type, {
    VoidCallback? reportEnd,
    String reason = '',
  }) async {
    Map<String, dynamic> params = {
      "uid": targetUid,
      "type": type,
      "reason": reason,
    };
    bool resp = await KAYE.http.submit(7019, params);
    if (resp) {
      Fluttertoast.showToast(msg: "kaye_trade_taste_mandarin".tr);
    } else {
      Fluttertoast.showToast(msg: "kaye_trade_taste_cray".tr);
    }
    reportEnd?.call();
  }

  static List<SheetAction<int>> _actions(bool showOthers) {
    List<SheetAction<int>> actions = [];
    actions.add(SheetAction(label: "kaye_trade_laxative_big".tr, key: 1));
    actions.add(
      SheetAction(label: "kaye_trade_gurney_female_upscale".tr, key: 2),
    );
    actions.add(SheetAction(label: "kaye_trade_cedar_cane".tr, key: 3));
    actions.add(SheetAction(label: "kaye_trade_medley_beret".tr, key: 4));
    if (showOthers) {
      actions.add(SheetAction(label: "kaye_trade_obese".tr, key: 99));
    }
    return actions;
  }
}
