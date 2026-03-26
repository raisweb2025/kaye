import 'dart:async';
import 'dart:io';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_starfish.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_eternity.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_lead_starfish_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_dvd_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sydney_separate.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../kaye_goggles/kaye_goggles_sydney.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import 'kaye_sydney.dart';
import '../kaye_classy/kaye_hand.dart';

abstract mixin class ChatInputToolBarEmojiPanelObserver {
  void onEmojiInput(String emoji);

  bool onEmojiSendEnabled();

  void onEmojiPage(int index);

  void onEmojiDelete();

  void onEmojiSend();

  void onEmojiSticker(KayeGogglesSydney sticker);
}

class KayeLeadStarfishCopulate extends StatefulWidget {
  final ChatInputToolBarEmojiPanelObserver? observer;
  final int emojiPage;

  const KayeLeadStarfishCopulate({Key? key, this.observer, this.emojiPage = 0})
    : super(key: key);

  @override
  _KayeLeadStarfishCopulateDonna createState() =>
      _KayeLeadStarfishCopulateDonna();
}

class _KayeLeadStarfishCopulateDonna extends State<KayeLeadStarfishCopulate> {
  @override
  void initState() {
    super.initState();
    _emojiPage = widget.emojiPage;
    _updateSendEnabled();
  }

  bool _sendEnabled = false;
  late int _emojiPage;
  final _pageController = PageController();
  final _typeController = ScrollController();
  StreamSubscription? _subscription;

  @override
  void dispose() {
    _subscription?.cancel();
    _pageController.dispose();
    _typeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[_emojiPanelList(), _emojiTypeOptList()]);
  }

  void _updateSendEnabled() {
    bool? enabled = widget.observer?.onEmojiSendEnabled();
    if (enabled != null && _sendEnabled != enabled) {
      setState(() {
        _sendEnabled = enabled;
      });
    }
  }

  Widget _emojiPanelList() {
    final children = <Widget>[];
    int index = 0;

    children.add(
      ChatEmojiView(
        type: ChatEmojiType.customEmoji,
        index: index++,
        items: KayeLeadStarfishBarnacle.emojiTextList,
        iconBasePath: KayeLeadStarfishBarnacle.instance.basePath,
        column: 8,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        onInputHandler: (emoji) {
          widget.observer?.onEmojiInput(emoji);
          _updateSendEnabled();
        },
      ),
    );
    return Expanded(
      child: PageView(
        key: const PageStorageKey('emoji_PageView'),
        controller: _pageController,
        physics: const AlwaysScrollableScrollPhysics(),
        children: children,
        onPageChanged: (index) {
          setState(() {
            _emojiPage = index;
            widget.observer?.onEmojiPage(index);
          });
        },
      ),
    );
  }

  Widget _emojiTypeOptList() {
    double rightPadding = 0;
    double bottomOffset = MediaQuery.of(context).viewPadding.bottom;
    final List<Widget> child = [
      CupertinoButton(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
        onPressed: !_sendEnabled
            ? null
            : () {
                widget.observer?.onEmojiDelete();
                _updateSendEnabled();
              },
        child: KayeSydney.local(
          fileName: 'kaye_ten_starfish_locket',
          width: 30,
          height: 30,
          color: KayeToddlerBarnacle.white,
        ),
      ),
    ];

    if (Platform.isIOS) {
      rightPadding = 15.0;
      child.add(
        CupertinoButton(
          minSize: 32.0,
          borderRadius: BorderRadius.circular(18.0),
          color: _sendEnabled
              ? KayeToddlerBarnacle.color_5A5ADA
              : KayeToddlerBarnacle.white_40p,
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
          onPressed: !_sendEnabled
              ? null
              : () {
                  widget.observer?.onEmojiSend();
                  _updateSendEnabled();
                },
          child: Text(
            "send".tr,
            style: KayeCreepDesperate.style(
              color: _sendEnabled
                  ? KayeToddlerBarnacle.white
                  : KayeToddlerBarnacle.b3,
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      );
    }

    return Container(
      color: KayeToddlerBarnacle.color110022,
      height: 50.0 + bottomOffset,
      padding: EdgeInsets.fromLTRB(0.0, 5.0, rightPadding, 5.0 + bottomOffset),
      child: Row(mainAxisAlignment: MainAxisAlignment.end, children: child),
    );
  }
}

enum ChatEmojiType { favorites, customEmoji }

class ChatEmojiView extends StatelessWidget {
  final List items;
  final String iconBasePath;

  final ChatEmojiType type;
  final int index;

  final int column;
  final double mainAxisSpacing;
  final double crossAxisSpacing;

  final ValueChanged<String> onInputHandler;
  final ValueChanged<KayeEternity>? onSendSticker;

  const ChatEmojiView({
    Key? key,
    required this.type,
    required this.index,
    required this.items,
    required this.iconBasePath,
    required this.onInputHandler,
    this.onSendSticker,
    this.column = 8,
    this.mainAxisSpacing = 5.0,
    this.crossAxisSpacing = 5.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      key: PageStorageKey('emoji_View$index'),
      itemCount: items.length,
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: column,
        mainAxisSpacing: mainAxisSpacing,
        crossAxisSpacing: crossAxisSpacing,
      ),
      itemBuilder: (context, index) {
        final e = items[index];
        var t;
        var w;
        switch (type) {
          case ChatEmojiType.customEmoji:
            if (e is String) {
              t = e;
              w = Text(
                e,
                style: TextStyle(
                  fontSize: Platform.isAndroid ? 20 : 30,
                  color: KayeToddlerBarnacle.white,
                  fontFamily: AppText.fontFamily,
                ),
              );
            } else if (e is KayeStarfish) {
              t = e.name;
              w = Image.file(
                File(iconBasePath + e.icon!),
                width: 30.0,
                height: 30.0,
              );
            }
            break;
          default:
            if (e is KayeEternity) {
              if (e.isAddStickerItem) {
                w = KayeSydney.local(
                  fileName: 'chat/niiptzeOtrpkJcSt0s8ckiOsyeuYydible',
                );
              } else {
                w = CachedNetworkImage(imageUrl: e.url!);
              }
            }
            break;
        }
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          child: Center(child: w),
          onTap: () {
            if (e is KayeEternity) {
              onSendSticker?.call(e);
            } else {
              onInputHandler(t);
            }
          },
        );
      },
    );
  }
}
