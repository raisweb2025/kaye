import 'package:kaye/kaye_kristen/kaye_goggles/kaye_luther.dart';
import 'package:kaye/kaye_kristen/kaye_learning_ui/kaye_lead_below_goal_playhouse.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../kaye_goggles/kaye_lead_luther_whatever_conundrum.dart';
import '../kaye_learning_ui/kaye_lead_below_legally_playhouse.dart';

class KayeLeadLutherWhateverConundrumBarnacle {
  static bool isCallCategory(KayeLeadLutherWhateverConundrum? content) {
    return content?.category != null &&
        content?.category == ChatSnapJsonContentCategory.callCate.value;
  }

  static bool isGiftCategory(KayeLeadLutherWhateverConundrum? content) {
    return content?.category != null &&
        content?.category == ChatSnapJsonContentCategory.imGiftCate.value;
  }

  static bool isOrderCategory(KayeLeadLutherWhateverConundrum content) {
    return content.category != null &&
        content.category == ChatSnapJsonContentCategory.orderCate.value;
  }

  static bool isUserRelated(KayeLeadLutherWhateverConundrum? content) {
    bool ret = false;
    if (content == null) {
      return ret;
    }
    if (content.category != null) {
      switch (ChatSnapJsonContentCategory.valueOf(content.category)) {
        case ChatSnapJsonContentCategory.orderCate:
          break;
        case ChatSnapJsonContentCategory.liveVideoCate:
          break;
        case ChatSnapJsonContentCategory.liveVoiceCate:
          break;
        case ChatSnapJsonContentCategory.feedCate:
        case ChatSnapJsonContentCategory.cardCate:
        case ChatSnapJsonContentCategory.skillCate:
          break;
        case ChatSnapJsonContentCategory.callCate:
        case ChatSnapJsonContentCategory.imGiftCate:
          ret = true;
          break;

        default:
          break;
      }
    }
    return ret;
  }

  static bool hasReadFlag(KayeLeadLutherWhateverConundrum? content) {
    bool ret = false;
    if (content?.category != null) {
      switch (ChatSnapJsonContentCategory.valueOf(content!.category)) {
        case ChatSnapJsonContentCategory.liveVideoCate:
          ret = isLiveVideoHasReadFlag(content.type!);
          break;
        case ChatSnapJsonContentCategory.liveVoiceCate:
          ret = isLiveVoiceHasReadFlag(content.type!);
          break;
        case ChatSnapJsonContentCategory.feedCate:
        case ChatSnapJsonContentCategory.cardCate:
        case ChatSnapJsonContentCategory.skillCate:
          ret = true;
          break;

        default:
          break;
      }
    }
    return ret;
  }

  static bool isSupported(KayeLeadLutherWhateverConundrum? content) {
    bool ret = false;
    if (content == null) {
      return ret;
    }
    if (content.category != null) {
      switch (ChatSnapJsonContentCategory.valueOf(content.category)) {
        case ChatSnapJsonContentCategory.orderCate:
          break;
        case ChatSnapJsonContentCategory.liveVideoCate:
          break;
        case ChatSnapJsonContentCategory.liveVoiceCate:
          break;
        case ChatSnapJsonContentCategory.cardCate:
        case ChatSnapJsonContentCategory.skillCate:
          ret = true;
          break;
        case ChatSnapJsonContentCategory.feedCate:
          if (content.type != null) {
            switch (content.type) {
              case ChatSnapJsonContentType.feedText:
              case ChatSnapJsonContentType.feedImage:
              case ChatSnapJsonContentType.feedVideo:
                break;
              default:
                break;
            }
          }
          break;
        case ChatSnapJsonContentCategory.callCate:
          if (content.type != null) {
            switch (content.type) {
              case ChatSnapJsonContentType.callAudio:
              case ChatSnapJsonContentType.callVideo:
              case ChatSnapJsonContentType.callRating:
                ret = true;
                break;
              default:
                break;
            }
          }
          break;
        case ChatSnapJsonContentCategory.imGiftCate:
          ret = true;
          break;
        default:
          break;
      }
    }
    return ret;
  }

  static Widget jsonContentView(KayeLuther snap, {Key? key}) {
    Widget w = Container();
    if (snap.jsonContentObj?.category != null) {
      switch (ChatSnapJsonContentCategory.valueOf(
        snap.jsonContentObj!.category!,
      )) {
        case ChatSnapJsonContentCategory.callCate:
          w = KayeLeadBelowGoalPlayhouse(
            key: key,
            content: snap.jsonContentObj!,
            chatSnap: snap,
          );
          break;
        case ChatSnapJsonContentCategory.imGiftCate:
          w = KayeLeadBelowLegallyPlayhouse(
            key: key,
            content: snap.jsonContentObj!,
          );
          break;
        default:
          break;
      }
    }
    return w;
  }

  static String jsonContentListMessage(
    KayeLeadLutherWhateverConundrum? content,
  ) {
    String ret = '';
    if (content?.category != null) {
      switch (ChatSnapJsonContentCategory.valueOf(content!.category)) {
        case ChatSnapJsonContentCategory.callCate:
          switch (content.type) {
            case ChatSnapJsonContentType.callRating:
              ret = "Message Ratings".tr;
              break;
            case ChatSnapJsonContentType.callAudio:
            case ChatSnapJsonContentType.callVideo:
              ret = "Message Call".tr;
              break;
            default:
              break;
          }
          break;
        case ChatSnapJsonContentCategory.imGiftCate:
          ret = "Message Gift".tr;
          break;
        default:
          break;
      }
    }
    return ret;
  }

  static bool isLiveVoiceSupported(int? type) {
    bool ret = false;
    if (type != null) {
      switch (type) {
        case ChatSnapJsonContentType.LiveVoiceDefault:
          ret = true;
          break;
      }
    } else {
      ret = true;
    }
    return ret;
  }

  static bool isLiveVideoUserRelated(int? type) {
    bool ret = false;
    if (type != null) {
      switch (type) {
        case ChatSnapJsonContentType.LiveVideoDefault:
          ret = true;
          break;
      }
    } else {
      ret = true;
    }
    return ret;
  }

  static bool isLiveVoiceUserRelated(int? type) {
    bool ret = false;
    if (type != null) {
      switch (type) {
        case ChatSnapJsonContentType.LiveVoiceDefault:
          ret = true;
          break;
      }
    } else {
      ret = true;
    }
    return ret;
  }

  static bool isLiveVideoHasReadFlag(int? type) {
    bool ret = false;
    if (type != null) {
      switch (type) {
        case ChatSnapJsonContentType.LiveVideoDefault:
          ret = true;
          break;
      }
    } else {
      ret = true;
    }
    return ret;
  }

  static bool isLiveVoiceHasReadFlag(int? type) {
    bool ret = false;
    if (type != null) {
      switch (type) {
        case ChatSnapJsonContentType.LiveVideoDefault:
          ret = true;
          break;
      }
    } else {
      ret = true;
    }
    return ret;
  }
}
