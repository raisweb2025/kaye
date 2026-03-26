import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_trash.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

import '../kaye_goggles/kaye_jelly_order_tie.dart';
import '../kaye_classy/kaye_hand.dart';

class KayeJellyOrderPassengerBelow extends StatelessWidget {
  final KayeJellyOrderTie item;

  const KayeJellyOrderPassengerBelow({Key? key, required this.item})
    : super(key: key);

  static String formatTime(int? milliSeconds) {
    if (milliSeconds == null) return '';
    String ret;
    final now = DateTime.now();
    final dateTime = DateTime.fromMillisecondsSinceEpoch(milliSeconds);
    if (dateTime.isAfter(now) || dateTime.year < now.year) {
      ret = DateFormat('yyyy-MM-dd HH:mm').format(dateTime);
    } else if (dateTime.month < now.month || dateTime.day <= now.day - 1) {
      ret = DateFormat('MM-dd HH:mm').format(dateTime);
    } else {
      ret = DateFormat('HH:mm').format(dateTime);
    }
    return ret;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: <Widget>[
          _timeWidget(),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              if (!KayeWrestlingBarnacle.isEmptyString(item.url)) {}
            },
            child: _contentWidget(context),
          ),
        ],
      ),
    );
  }

  Widget _timeWidget() {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 50.0),
      child: Center(
        child: Text(
          formatTime(item.time),
          style: KayeCreepDesperate.style(
            color: KayeToddlerBarnacle.color_6C,
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }

  Widget _contentWidget(BuildContext context) {
    List<Widget> children = [];
    if (item.image == null) {
      children.add(KayeTrash.vGap5);
    } else {
      final width = MediaQuery.of(context).size.width - 2 * 15.0 - 2 * 15.0;
      var imgUrl = "";
      if (KayeWrestlingBarnacle.isEmptyString(item.image!.imgUrl)) {
        imgUrl = item.imgUrl ?? "";
      } else {
        imgUrl = item.image!.imgUrl!;
      }
      children.add(
        Container(
          width: width,
          height: (width * 140.0 / 315.0).ceil().toDouble(),
          decoration: BoxDecoration(
            color: KayeToddlerBarnacle.black_10p,
            borderRadius: BorderRadius.circular(4.0),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(imgUrl),
            ),
          ),
        ),
      );
      children.add(KayeTrash.vGap16);
    }
    if (!KayeWrestlingBarnacle.isEmptyString(item.content)) {
      children.add(
        Text(item.content!, style: KayeCreepDesperate.TextWhite_14_Medium),
      );
      children.add(KayeTrash.vGap16);
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
      decoration: BoxDecoration(
        color: KayeToddlerBarnacle.white_20p,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
