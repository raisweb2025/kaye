import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_legally.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_political.dart';
import 'package:kaye/kaye_kristen/kaye_learning/kaye_lead_desperate_wrestling.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_angel_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sydney_towards_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sydney_separate.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_trash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../kaye_cable.dart';
import '../kaye_cat_lava/kaye_lava_closing.dart';
import '../kaye_learning_ui/kaye_legally_planner.dart';
import '../kaye_barnacle/kaye_io_barnacle.dart';
import '../kaye_barnacle/kaye_promotion_barnacle.dart';
import 'kaye_lead_betty_copulate.dart';
import 'kaye_autograph_sydney.dart';
import '../kaye_classy/kaye_hand.dart';
import 'package:flutter/cupertino.dart';

import '../kaye_mason/kaye_stroke.dart';
import '../kaye_barnacle/kaye_lead_starfish_barnacle.dart';
import '../kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'kaye_lead_starfish_copulate.dart';
import 'kaye_lead_google_dry_copulate.dart';
import 'kaye_sydney.dart';
import 'kaye_dot_barnacle.dart';

class KayeLeadGoogleCalmly extends StatefulWidget {
  final ChatInputToolBarObserver observer;
  final String? cachePath;
  final String? hintText;
  final ChatInputPlatForm fromPlatform;
  final ChatInputMethod inputType;

  final List<String>? quickGroup;

  final KayeLeadDesperateWrestling chatStyleType;

  const KayeLeadGoogleCalmly({
    super.key,
    required this.observer,
    this.cachePath,
    this.hintText,
    this.fromPlatform = ChatInputPlatForm.message,
    this.inputType = ChatInputMethod.none,
    this.quickGroup,
    this.chatStyleType = KayeLeadDesperateWrestling.VIDEO_BUTTON_INPUTTOOL,
  });

  @override
  KayeLeadGoogleCalmlyDonna createState() => KayeLeadGoogleCalmlyDonna();
}

class KayeLeadGoogleCalmlyDonna extends State<KayeLeadGoogleCalmly>
    with ChatInputToolBarEmojiPanelObserver, WidgetsBindingObserver {
  String _editText = '';

  bool get isChatPlatform {
    return widget.fromPlatform == ChatInputPlatForm.message;
  }

  ChatInputMethod _method = ChatInputMethod.none;
  String hintText = "";
  int _emojiPage = 0;

  bool get _isInputToolPanelShown => _method != ChatInputMethod.none;

  bool get keyboardShowing => _method == ChatInputMethod.text;

  bool get _hasInputText => _editController.text.isNotEmpty;
  String voiceCachePath = "";

  void setDraft(String draft) {
    _editController.text = draft;
    _editFocus.requestFocus();
    _kayeOrderCreepNaughty();
  }

  TextSelection? _editSelection;
  final FocusNode _editFocus = FocusNode();
  final TextEditingController _editController = KayeCreepBasketProtector();
  StreamSubscription? _keyboardSubscription;

  void setHintText(String? hint) {
    if (null != hint && hint.isNotEmpty) {
      setState(() {
        hintText = hint ?? "";
        _editFocus.requestFocus();
      });
    }
  }

  void kayeSonogramNineBoggle() {
    _editFocus.requestFocus();
  }

  @override
  void dispose() {
    _editFocus.dispose();
    _editController.dispose();
    _keyboardSubscription?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);

    if (null != widget.hintText && widget.hintText.toString().isNotEmpty) {
      hintText = widget.hintText!;
    }

    _editController.addListener(() {
      if (_editController.selection.start >= 0 &&
          _editController.selection.end >= 0) {
        _editSelection = _editController.selection;
      }
      setState(() {});
    });
    _method = widget.inputType;
    if (_method == ChatInputMethod.text && Platform.isAndroid) {
      _editFocus.requestFocus();
    }
    voiceCachePath = widget.cachePath ?? "";
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceData = MediaQuery.of(context);
    final panelHeight = 261 + deviceData.viewPadding.bottom;
    final visibilityHeight = !_isInputToolPanelShown
        ? 0.0
        : _method == ChatInputMethod.text
        ? max(panelHeight, deviceData.viewInsets.bottom)
        : panelHeight;
    return Container(
      padding: EdgeInsets.only(
        top: 10,
        bottom: _isInputToolPanelShown ? 0 : deviceData.viewPadding.bottom,
      ),
      child: Column(
        children: <Widget>[
          _kayeDryElectrifyHuge(),
          Visibility(
            visible: _isInputToolPanelShown,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              height: visibilityHeight.toDouble(),
              color: KayeToddlerBarnacle.color110022,
              child: _kayeGoogleCalmlyCopulate(_method),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();

    WidgetsBinding.instance.addPostFrameCallback((time) {
      _kayeBelgianGatherImplant(MediaQuery.of(context).viewInsets.bottom);
    });
  }

  Widget _kayeDryElectrifyHuge() {
    List<Widget> btns = [
      if (KAYE.kayeClosing.isKayeIOSZucchiniDedicate())
        _kayeElectrify(
          null,
          _method == ChatInputMethod.voice,
          () {
            _kayeCheerleadGoogleForklift(ChatInputMethod.voice);
          },
          iconPath: 'kaye_ten_betty_interface',
          width: 30,
          height: 30,
        ),

      _kayeElectrify(
        null,
        _method == ChatInputMethod.photo,
        () {
          _kayeCheerleadGoogleForklift(ChatInputMethod.photo);
        },
        iconPath: 'kaye_ten_vernacular_interface',
        width: 30,
        height: 30,
      ),

      _kayeElectrify(
        null,
        _method == ChatInputMethod.emoji,
        () {
          _kayeCheerleadGoogleForklift(ChatInputMethod.emoji);
        },
        iconPath: 'kaye_ten_starfish_interface',
        width: 30,
        height: 30,
      ),

      _kayeElectrify(
        null,
        _method == ChatInputMethod.gift,
        () {
          _kayeCheerleadGoogleForklift(ChatInputMethod.gift);
        },
        iconPath: 'kaye_ten_legally_interface',
        width: 30,
        height: 30,
      ),
    ];

    if (!KAYE.kayeClosing.isKayeAiZucchiniDedicate() &&
        widget.chatStyleType ==
            KayeLeadDesperateWrestling.VIDEO_BUTTON_INPUTTOOL) {}

    double funPanel =
        KayeWrestlingBarnacle.isEmptyList(widget.quickGroup) ||
            KAYE.kayeClosing.isKayeZucchiniDedicate()
        ? 72
        : 72 + 30;

    return Visibility(
      visible: isChatPlatform,
      child: SizedBox(
        height: funPanel,
        child: Column(
          children: <Widget>[
            _kayeAkaSuperb(),
            Expanded(
              child: Container(
                color: KayeToddlerBarnacle.white_10p,
                child: Row(
                  children: [
                    16.wGap,
                    _kayeElectrify(
                      null,
                      _method == ChatInputMethod.gift,
                      () {
                        _kayeCheerleadGoogleForklift(ChatInputMethod.gift);
                      },
                      iconPath: 'kaye_ten_legally_interface',
                      width: 24,
                      height: 24,
                    ),

                    if (KAYE.kayeClosing.isKayeIOSZucchiniDedicate())
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: _kayeElectrify(
                          null,
                          _method == ChatInputMethod.voice,
                          () {
                            _kayeCheerleadGoogleForklift(ChatInputMethod.voice);
                          },
                          iconPath: 'kaye_ten_betty_interface',
                          width: 24,
                          height: 24,
                        ),
                      ),

                    Expanded(child: _kayeCreepPhoneHuge()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _kayeElectrify(
    IconData? iconData,
    bool selected,
    VoidCallback onPressed, {
    String? iconPath,
    double? width,
    double? height,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 24,
        height: 24,
        alignment: Alignment.center,
        child: iconData != null
            ? Icon(
                iconData,
                size: 24,
                color: selected
                    ? KayeToddlerBarnacle.b1
                    : KayeToddlerBarnacle.color_6C,
              )
            : KayeSydney.local(
                fileName: iconPath!,
                width: width!,
                height: height!,
                fit: BoxFit.contain,
              ),
      ),
    );
  }

  Widget _kayeGoalElectrify(bool selected, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 48,
        height: 48,
        alignment: Alignment.center,
        child: const KayeAutographSydney(
          url: KayeCable.kaye_uptown_kaye_ten_goal_enforce_geographic,
          height: 30,
          width: 30,
        ),
      ),
    );
  }

  void _kayeBelgianGatherImplant(double keyBoardHeight) {
    if (_method == ChatInputMethod.none) {
      if (keyBoardHeight > 0) {
        _kayeCheerleadGoogleForklift(ChatInputMethod.text);
      }
    } else if (_method == ChatInputMethod.text) {
      if (keyBoardHeight == 0) {
        kayeMeritGoogleForklift();
      }
    }
  }

  Widget _kayeGoogleCalmlyCopulate(ChatInputMethod method) {
    Widget widget = Container(color: KayeToddlerBarnacle.color110022);
    switch (method) {
      case ChatInputMethod.emoji:
        widget = KayeLeadStarfishCopulate(
          observer: this,
          emojiPage: _emojiPage,
        );
        break;
      case ChatInputMethod.voice:
        widget = KayeLeadBettyCopulate(
          onVoiceRecord: kayeCorpseBetty,
          cachePath: voiceCachePath,
        );
        break;
      default:
        break;
    }
    return widget;
  }

  @override
  void onEmojiDelete() {
    final selection = _kayeFetchNineTract();
    final left = _editController.text.substring(0, selection.start);
    final right = _editController.text.substring(selection.start);
    final newLeft = left.runes.isEmpty
        ? left
        : String.fromCharCodes(left.runes, 0, left.runes.length - 1);
    _editController.text = newLeft + right;
    _editController.selection = TextSelection(
      baseOffset: selection.start - (newLeft.length - left.length).abs(),
      extentOffset: selection.end - (newLeft.length - left.length).abs(),
      affinity: selection.affinity,
      isDirectional: selection.isDirectional,
    );
    _kayeOnCreepNaughty(_editController.text);
  }

  Widget _kayeCreepPhoneHuge() {
    Widget sendWidget = KayeSydney.local(
      fileName: _hasInputText
          ? "kaye_ten_lead_genitals"
          : "kaye_ten_lead_promotion",
      width: 24,
      height: 24,
    );
    if (KayeIOBarnacle.isARLanguage()) {
      sendWidget = Transform(
        alignment: Alignment.center,
        transform: Matrix4.identity()..rotateY(3.14159),
        child: sendWidget,
      );
    }

    final textField = CupertinoTextField(
      minLines: 1,
      maxLines: 2,
      maxLength: 2000,
      padding: const EdgeInsets.all(0),
      style: KayeCreepDesperate.style(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: KayeToddlerBarnacle.b3,
      ),
      focusNode: _editFocus,
      controller: _editController,
      decoration: const BoxDecoration(color: KayeToddlerBarnacle.transparent),
      placeholderStyle: KayeCreepDesperate.style(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: KayeToddlerBarnacle.white_20p,
      ),
      placeholder: hintText,
      textInputAction: TextInputAction.newline,
      onSubmitted: null,
      onChanged: _kayeOnCreepNaughty,
      suffix: Container(),
    );

    return Container(
      height: 44,
      margin: const EdgeInsets.only(left: 10, right: 16),
      padding: const EdgeInsetsDirectional.only(start: 16, end: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: KayeToddlerBarnacle.white_10p,
      ),
      child: Row(
        children: [
          Expanded(child: textField),
          KayeTrash.hGap8,
          CupertinoButton(
            padding: const EdgeInsets.all(0),
            onPressed: () {
              _hasInputText
                  ? _kayeGenitalsCreep()
                  : _kayeCheerleadGoogleForklift(ChatInputMethod.photo);
            },
            child: sendWidget,
          ),
        ],
      ),
    );
  }

  void _kayeCheerleadGoogleForklift(ChatInputMethod method) {
    if (_method == method) return;
    if (method == ChatInputMethod.photo) {
      KayePromotionBarnacle.kayeCuterPromotionTowards(context, (data) {
        if (data is KayeGogglesSydney) {
          widget.observer.onSendImage(data.imgUrl!);
        } else if (data is KayeGogglesPolitical) {
          widget.observer.onSendVideo(data.videoUrl!);
        }
      });
      return;
    } else if (method == ChatInputMethod.gift) {
      KayeLegallyPlanner.showGiftPanel(context, (gift) {
        widget.observer.onSendGift(gift);
      });
      return;
    } else if (method == ChatInputMethod.call) {
      widget.observer.onSelectInputFunc(ChatInputFuncType.call);
      return;
    } else if (method == ChatInputMethod.more) {
      widget.observer.onSelectInputFunc(ChatInputFuncType.more);
      return;
    }

    if (_method == ChatInputMethod.text) _editFocus.unfocus();
    _method = method;
    setState(() {});
    widget.observer.onActiveInputMethod(_method);
  }

  void kayeMeritGoogleForklift() {
    if (_method == ChatInputMethod.none) return;
    if (_method == ChatInputMethod.text) _editFocus.unfocus();
    _method = ChatInputMethod.none;
    widget.observer.onActiveInputMethod(_method);
    setState(() {});
  }

  void _kayeOrderCreepNaughty() {
    widget.observer.onTextChanged(_editController.text);
  }

  void kayeDevonGoogleUnhook(ChatInputFuncType type) {
    widget.observer.onSelectInputFunc(type);
  }

  void kayeCorpseBetty(String path) {
    widget.observer.onSendVoice(path);
  }

  void _tryDeleteEmoji() {}

  void _kayeOnCreepNaughty(String text) {
    if (_editText.runes.length == text.runes.length + 1 &&
        (text.isEmpty || _editText.contains(text))) {
      _tryDeleteEmoji();
    }
    _editText = _editController.text;
    _editSelection = _editController.selection;
    _kayeOrderCreepNaughty();
  }

  TextSelection _kayeFetchNineTract() {
    if (_editSelection == null ||
        _editSelection!.start < 0 ||
        _editSelection!.end < 0) {
      _editSelection = TextSelection.collapsed(
        offset: _editController.text.length,
      );
    }
    return _editSelection!;
  }

  void _kayeGenitalsCreep() {
    if (_method == ChatInputMethod.text) _editFocus.requestFocus();
    String text = _editController.text.trim();
    if (text.isEmpty) return;
    text = KayeLeadStarfishBarnacle.instance.checkEmojiText(text);
    widget.observer.onSendText(text);
    _editController.text = '';
    _editText = _editController.text;
    _editSelection = null;
    _kayeOrderCreepNaughty();
  }

  @override
  void onEmojiInput(String emoji) {
    final selection = _kayeFetchNineTract();
    final left = _editController.text.substring(0, selection.start);
    final right = _editController.text.substring(selection.start);
    _editController.text = left + emoji + right;
    _editController.selection = TextSelection(
      baseOffset: selection.start + emoji.length,
      extentOffset: selection.end + emoji.length,
      affinity: selection.affinity,
      isDirectional: selection.isDirectional,
    );
    _editText = _editController.text;
    _editSelection = _editController.selection;
    _kayeOrderCreepNaughty();
  }

  @override
  void onEmojiSticker(KayeGogglesSydney sticker) {
    widget.observer.onSendSticker(sticker);
  }

  @override
  void onEmojiPage(int index) {
    _emojiPage = index;
  }

  @override
  void onEmojiSend() {
    _kayeGenitalsCreep();
  }

  @override
  bool onEmojiSendEnabled() {
    return _editController.text.isNotEmpty;
  }

  void updateInputHint(String inputHint) {
    setState(() {
      hintText = inputHint;
    });
  }

  Widget _kayeAkaSuperb() {
    Widget contentWidget = Container();

    if (KAYE.kayeClosing.isKayeZucchiniDedicate()) return contentWidget;

    List<String>? quickMessages = widget.quickGroup;

    if (KayeWrestlingBarnacle.isEmptyList(quickMessages)) return contentWidget;

    Widget childWidget = ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: quickMessages!.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            widget.observer.onSendText(quickMessages[index].tr);
          },
          child: Container(
            height: 28,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(14.0)),
              color: KayeToddlerBarnacle.white_20p,
            ),
            child: Row(
              children: [
                Text(
                  quickMessages[index].tr,
                  style: KayeCreepDesperate.TextWhite_12,
                ),
                4.wGap,
                KayeSydney.local(
                  fileName: "kaye_ten_lead_genitals",
                  width: 16,
                  height: 16,
                ),
              ],
            ),
          ),
        );
      },
    );

    contentWidget = Container(
      height: 30,
      margin: const EdgeInsets.only(bottom: 8),
      child: childWidget,
    );
    return contentWidget;
  }
}

enum ChatInputMethod {
  none,
  text,
  voice,
  photo,
  gift,
  emoji,
  function,
  call,
  more,
}

enum ChatInputPlatForm { message }

abstract mixin class ChatInputToolBarObserver {
  void onSendText(String text);

  void onSelectInputFunc(ChatInputFuncType type);

  void onSendGift(VoGift gift);

  void onSendSticker(KayeGogglesSydney sticker);

  void onSendImage(String path);

  void onSendVideo(String path);

  void onSendVoice(String path);

  void onActiveInputMethod(ChatInputMethod method);

  void onTextChanged(String text);
}

class ChatInputFuncItem {
  final ChatInputFuncType type;
  final String name;
  final String icon;

  ChatInputFuncItem(this.type, this.name, this.icon);
}

enum ChatInputFuncType { voice, video, card, location, more, call }

class KayeCreepBasketProtector extends TextEditingController {
  @override
  TextSpan buildTextSpan({
    required BuildContext context,
    TextStyle? style,
    required bool withComposing,
  }) {
    if (!value.composing.isValid || !withComposing) {
      return TextSpan(style: style, text: text);
    }
    final TextStyle? composingStyle = style?.merge(
      const TextStyle(backgroundColor: Color(0xFFF1F1F1)),
    );
    return TextSpan(
      style: style,
      children: <TextSpan>[
        TextSpan(text: value.composing.textBefore(value.text)),
        TextSpan(
          style: composingStyle,
          text: value.composing.textInside(value.text),
        ),
        TextSpan(text: value.composing.textAfter(value.text)),
      ],
    );
  }
}
