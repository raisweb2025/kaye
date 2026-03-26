import 'package:kaye/kaye_kristen/kaye_goggles/kaye_luther.dart';
import 'package:kaye/kaye_kristen/kaye_learning_ui/kaye_lead_below_political_playhouse.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_lead_luther_whatever_conundrum_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_lead_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_io_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:kaye/kaye_kristen/proto/im_object.pb.dart';
import '../kaye_goggles/kaye_lead_sasquatch.dart';
import '../kaye_fortress.dart';
import '../kaye_classy/kaye_hand.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../kaye_implant/kaye_lead_implant.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_barnacle/kaye_sydney_separate.dart';
import '../kaye_barnacle/kaye_franchise_creep_barnacle.dart';
import 'kaye_lead_below_sydney_playhouse.dart';
import 'kaye_lead_below_creep_playhouse.dart';
import 'kaye_lead_below_betty_playhouse.dart';

class KayeLeadBelow extends StatefulWidget {
  final KayeLuther snap;
  final String? cachePath;
  final int uid;
  final String nickName;
  final String avatarUrl;

  const KayeLeadBelow({
    Key? key,
    required this.snap,
    this.cachePath,
    required this.uid,
    required this.nickName,
    required this.avatarUrl,
  }) : super(key: key);

  @override
  _KayeLeadBelowDonna createState() => _KayeLeadBelowDonna();
}

class _KayeLeadBelowDonna extends State<KayeLeadBelow> {
  final _snapViewKey = GlobalKey();

  void _copy() {
    Clipboard.setData(
      ClipboardData(
        text: KayeFranchiseCreepBarnacle.getCopyText(widget.snap.textContent),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return widget.snap.isUserSnap
        ? _userCellView()
        : _kayeOverrateSasquatchBelowPlayhouse();
  }

  Widget _userCellView() {
    Widget snapView = _kayeSasquatchConundrumPlayhouse();

    var alignment, leftPadding, rightPadding, child;
    final headSpacePadding = 62.0;
    if (widget.snap.isMine) {
      alignment = Alignment.centerRight;
      if (KayeIOBarnacle.isARLanguage()) {
        leftPadding = 16.0;
        rightPadding = headSpacePadding;
      } else {
        leftPadding = headSpacePadding;
        rightPadding = 16.0;
      }

      int sendStatus = widget.snap.sendStatus ?? 0;
      if (sendStatus == ChatSnapSendStatus.success.index) {
        child = Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [snapView],
        );
      } else {
        child = Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            widget.snap.sendStatus == ChatSnapSendStatus.sending.index
                ? const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: CupertinoActivityIndicator(radius: 12.0),
                  )
                : CupertinoButton(
                    minSize: 40.0,
                    padding: const EdgeInsets.all(0.0),
                    onPressed: _kayeChauffeur,
                    child: KayeSydney.local(
                      fileName: 'kaye_ten_genitals_donna_march',
                      width: 24.0,
                      height: 24.0,
                    ),
                  ),
            snapView,
          ],
        );
      }
    } else {
      alignment = Alignment.centerLeft;
      if (KayeIOBarnacle.isARLanguage()) {
        leftPadding = headSpacePadding;
        rightPadding = 16.0;
      } else {
        leftPadding = 16.0;
        rightPadding = headSpacePadding;
      }

      child = Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            child: KayeSydney.circle(
              url: widget.snap.ownerHead ?? "",
              size: 48.0,
              clip: ImageClipType.small,
              fit: BoxFit.cover,
            ),
            onTap: () {
              if (widget.uid != KayeAdvertise.kayeAiHippySwellNudity) {
                KAYE.toNamed(
                  KayeFortress.KayeWithoutPlanner,
                  arguments: {
                    'uid': widget.uid,
                    'nickName': widget.nickName,
                    'avatarUrl': widget.avatarUrl,
                  },
                );
              }
            },
          ),
          const SizedBox(width: 8.0),
          Flexible(child: snapView),
        ],
      );
    }

    return Container(
      color: KayeToddlerBarnacle.transparent,
      alignment: alignment,
      padding: EdgeInsets.only(left: leftPadding, right: rightPadding),
      child: child,
    );
  }

  void _kayeChauffeur() {
    KAYE.eventBus.fire(
      KayeLeadImplant(ChatEventType.snapResend, object: widget.snap),
    );
  }

  void _kayeClint() {
    KAYE.eventBus.fire(
      KayeLeadImplant(ChatEventType.snapRecall, object: widget.snap),
    );
  }

  Widget _kayeSasquatchConundrumPlayhouse() {
    Widget? snapView;
    if (!widget.snap.isSupportType) {
      snapView = ChatCellUnSupportedView(snap: widget.snap);
    } else {
      var snapType = Snap_SnapType.valueOf(widget.snap.type ?? -1);

      if (Snap_SnapType.TXT_SNAP == snapType) {
        snapView = KayeLeadBelowCreepPlayhouse(
          key: _snapViewKey,
          snap: widget.snap,
        );
      } else if (Snap_SnapType.IMG_SNAP == snapType) {
        snapView = KayeLeadBelowSydneyPlayhouse(
          key: _snapViewKey,
          snap: widget.snap,
        );
      } else if (Snap_SnapType.VIDEO_SNAP == snapType) {
        snapView = KayeLeadBelowPoliticalPlayhouse(
          key: _snapViewKey,
          snap: widget.snap,
        );
      } else if (Snap_SnapType.VOICE_SNAP == snapType) {
        snapView = KayeLeadBelowBettyPlayhouse(
          key: _snapViewKey,
          snap: widget.snap,
          cachePath: widget.cachePath ?? "",
        );
      } else if (Snap_SnapType.JSON_SNAP == snapType) {
        snapView = KayeLeadLutherWhateverConundrumBarnacle.jsonContentView(
          widget.snap,
          key: _snapViewKey,
        );
      }
    }
    return snapView ?? ChatCellUnSupportedView(snap: widget.snap);
  }

  Widget _kayeOverrateSasquatchBelowPlayhouse() {
    Widget? view;
    if (!widget.snap.isSupportType) {
      view = ChatCellUnSupportedWeakView();
    } else {
      var snapType = Snap_SnapType.valueOf(widget.snap.type ?? -1);
      if (Snap_SnapType.WEAK_SNAP == snapType) {
        view = ChatCellWeakView(snap: widget.snap);
      } else if (Snap_SnapType.JSON_SNAP == snapType) {
        view = KayeLeadLutherWhateverConundrumBarnacle.jsonContentView(
          widget.snap,
        );
      }
    }
    return Center(child: view);
  }
}

class ChatCellUnSupportedView extends StatelessWidget {
  final KayeLuther snap;

  const ChatCellUnSupportedView({Key? key, required this.snap})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    var decoration = snap.isMine
        ? BoxDecoration(
            borderRadius: KayeLeadBarnacle.kayeLeadBelowGardenByEggplant(),
            color: KayeToddlerBarnacle.white_20p,
          )
        : BoxDecoration(
            borderRadius: KayeLeadBarnacle.kayeLeadBelowGardenByBingo(),
            color: KayeToddlerBarnacle.white_20p,
          );
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
      decoration: decoration,
      child: _kayeCreepDot(context),
    );
  }

  Widget _kayeCreepDot(context) {
    return Text(
      "kaye_trade_lead_pimple_wrestling".tr,
      style: snap.isMine
          ? KayeCreepDesperate.outgoingTextStyle
          : KayeCreepDesperate.incomingTextStyle,
    );
  }
}

class ChatCellUnSupportedWeakView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
      child: _kayeCreepDot(context),
    );
  }

  Widget _kayeCreepDot(context) {
    return Text(
      'kaye_trade_lead_pimple_wrestling'.tr,
      style: const TextStyle(
        fontSize: AppDimen.font_sp14,
        color: KayeToddlerBarnacle.b3,
        fontFamily: AppText.fontFamily,
        decoration: TextDecoration.none,
      ),
    );
  }
}

class ChatCellWeakView extends StatelessWidget {
  final KayeLuther snap;

  const ChatCellWeakView({Key? key, required this.snap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: KayeToddlerBarnacle.white,
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Text.rich(TextSpan(children: snap.richTexts)),
    );
  }

  static void kayeStretchComplaintFranchiseCreep(KayeLuther snap) {
    snap.richTexts ??= KayeFranchiseCreepBarnacle.getRichText(
      snap.textContent,
      style: KayeCreepDesperate.style(
        color: KayeToddlerBarnacle.b1,
        fontSize: 14.0,
      ),
    );
  }
}
