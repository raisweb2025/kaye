import 'dart:collection';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_infrared_legally_order.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_hand.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:kaye/kaye_kristen/proto/kaye_infrared.pb.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../kaye_goggles/kaye_infrared_legally.dart';
import '../kaye_learning/kaye_outdated_upon.dart';
import '../kaye_fortress.dart';
import '../kaye_mason/kaye_stroke.dart';

class KayeInfraredLegallyIncreasePlayhouse extends StatefulWidget {
  const KayeInfraredLegallyIncreasePlayhouse({Key? key}) : super(key: key);

  @override
  State<KayeInfraredLegallyIncreasePlayhouse> createState() =>
      _KayeInfraredLegallyIncreasePlayhouseDonna();
}

class _KayeInfraredLegallyIncreasePlayhouseDonna
    extends State<KayeInfraredLegallyIncreasePlayhouse>
    with TickerProviderStateMixin {
  KayeInfraredLegally? giftFeed;
  double _startPosition = 0;
  double _endPosition = 0;
  final ListQueue<KayeInfraredLegally> _queue =
      ListQueue<KayeInfraredLegally>();
  bool _isProcessing = false;

  final double _outInitPosition = -190;
  final double _inInitPosition = 206;

  @override
  void initState() {
    super.initState();

    KAYE.listen<KayeInfraredLegallyOrder>((notify) {
      if (notify.gifts.isNotEmpty) {
        for (var gift in notify.gifts) {
          addMessage(gift);
        }
      }
    });
  }

  void addMessage(KayeInfraredLegally message) {
    _queue.addLast(message);
    _tryProcessNext();
  }

  void _tryProcessNext() {
    if (_isProcessing || _queue.isEmpty) {
      return;
    }

    _isProcessing = true;
    giftFeed = _queue.removeFirst();
    if (giftFeed?.animationUrl?.isNotEmpty == true) {
      Get.toNamed(
        KayeFortress.KayeSVGAPlanner,
        arguments: KayeOutdatedUpon(giftFeed!.animationUrl ?? "", false),
      );
    }
    setState(() {
      _startPosition = _outInitPosition;
      _endPosition = _inInitPosition;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget mainWidget = Container();
    if (giftFeed != null) {
      mainWidget = Positioned(
        bottom: 290,
        left: _startPosition,
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: _startPosition, end: _endPosition),
          duration: const Duration(milliseconds: 500),
          builder: (context, value, child) {
            return Transform.translate(offset: Offset(value, 0), child: child);
          },
          onEnd: () {
            if (_endPosition == _inInitPosition) {
              _animationOut();
            }

            if (_endPosition == _outInitPosition) {
              setState(() {
                _isProcessing = false;
                _tryProcessNext();
              });
            }
          },
          child: Container(
            width: 200,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(33),
              border: Border.all(width: 2, color: "4384FF".toColor()),
            ),
            child: Row(
              children: [
                KayeSydney.small(
                  url: giftFeed!.icon,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                4.wGap,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 120,
                      child: Text(
                        giftFeed!.sender.nickName,
                        style: KayeCreepDesperate.TextWhite_60p_14,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    3.hGap,
                    Text(
                      giftFeed!.name,
                      style: KayeCreepDesperate.TextWhite_14,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Stack(children: [mainWidget]);
  }

  void _animationOut() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          _endPosition = _outInitPosition;
        });
      });
    });
  }
}
