import 'dart:convert';
import 'dart:io';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_starfish.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_starfish_weasel.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_amongst.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart' as Path;
import 'kaye_dvd_barnacle.dart';
import 'kaye_white_barnacle.dart';
import 'kaye_wrestling_barnacle.dart';

class KayeLeadStarfishBarnacle {
  final String kEmojiNameRegular = "\\[[\\s\\S]{1,}?\\]";

  String basePath = "";
  List<KayeStarfishWeasel> list = [];
  Map<String, KayeStarfish> dic = {};

  static KayeLeadStarfishBarnacle get instance => _getInstance();
  static KayeLeadStarfishBarnacle? _instance;

  static KayeLeadStarfishBarnacle _getInstance() {
    return _instance ??= KayeLeadStarfishBarnacle._internal();
  }

  KayeLeadStarfishBarnacle._internal() {
    basePath = chatEmojiPath();
  }

  void dispose() => _instance = null;

  void getEmojiInfoList() {}

  String checkEmojiText(String? text) {
    if (text == null || text.length == 0) {
      return "";
    }
    String returnText = '';
    Iterable<RegExpMatch> matches = RegExp(kEmojiNameRegular).allMatches(text);
    int start = 0;
    for (Match m in matches) {
      String? match = m.group(0);
      if (m.start > start) {
        String tempText = text.substring(start, m.start);
        returnText += tempText;
      }
      KayeWrestlingBarnacle.nullSafe<String>(
        match,
        notNullBlock: (obj) => returnText += obj,
      );
      if (dic[match] != null) {
        returnText += '()';
      }
      start = m.end;
    }
    if (text.length > start) {
      String tempText = text.substring(start, text.length);
      returnText += tempText;
    }
    return returnText;
  }

  static final List<String> emojiTextList = [
    '🙂',
    '😀',
    '😁',
    '😉',
    '😍',
    '😘',
    '😜',
    '🤑',
    '🤗',
    '😚',
    '😇',
    '😎',
    '🤓',
    '😔',
    '☹️',
    '😁',
    '😡',
    '😭',
    '😓',
    '😪',
    '😳',
    '😱',
    '😰',
    '😴',
    '🤔',
    '🙄️',
    '😬',
    '🤒',
    '🤖️',
    '😈',
    '💩',
    '👻',
    '👽',
    '🛀',
    '👯',
    '🙏',
    '👏',
    '🙌',
    '👍',
    '👎',
    '✌️',
    '🤘',
    '👌',
    '👈',
    '👉',
    '👆',
    '👇',
    '👋',
    '💪',
    '🖕',
    '💋',
    '👄',
    '❤️',
    '💔',
    '💓',
    '💘',
    '🎉',
    '🎁',
    '🌹',
    '💣',
    '🦄️',
    '🐶',
    '🐯',
    '🐷',
    '🍏',
    '🍉',
    '🍗',
    '🍭',
    '🎂',
    '🍩',
    '🍾️',
    '🍺',
    '☕️',
    '👑',
    '💰',
    '🕶',
    '🔥',
    '☀️',
    '🌙',
    '🌈',
    '☁️',
    '⛈',
    '❄️',
    '🌫',
    '☔️',
    '💨',
    '☘️',
    '☮️',
    '💢',
  ];

  static String kAppConfigPathResourcePath = "unzip_resource";

  static String kChatEmojiResVersionKey = "kChatEmojiResVersionKey";
  static String kChatEmojiResName = "chat_emoji_res";
  static String kChatEmojiResArrayName = "chat_emoji_array.json";
  static String kChatEmojiResDicName = "chat_emoji_dic.json";

  int chatEmojiResourcesVersion() {
    /**
     * 1 : 初始
     */
    return 1;
  }

  String chatEmojiPath() {
    return Path.join(
      KAYE.rootPath,
      '$kAppConfigPathResourcePath/$kChatEmojiResName/',
    );
  }
}
