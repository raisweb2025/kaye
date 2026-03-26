import 'dart:math';
import 'dart:ui';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_sasquatch.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_fortress.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sydney_separate.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_maneuver_electrify.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_autograph_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_trash.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:tapped/tapped.dart';
import '../kaye_goggles/kaye_lead_sasquatch.dart';
import '../kaye_goggles/kaye_goggles_latin.dart';
import '../kaye_goggles/kaye_goggles_exact.dart';
import '../kaye_barnacle/kaye_io_barnacle.dart';
import '../kaye_classy/kaye_hand.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../kaye_goggles/kaye_sasquatch_trish.dart';
import '../kaye_barnacle/kaye_monroe_barnacle.dart';

abstract class KayeDotUptown {
  static Widget buildAvatarsAnim(
    String avatarUrl1,
    String avatarUrl2,
    bool animationValue,
  ) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AnimatedOpacity(
          opacity: animationValue ? 1 : 0,
          duration: const Duration(milliseconds: 1000),
          child: Container(
            height: 300,
            alignment: Alignment.topCenter,
            child: const KayeAutographSydney(
              url: "assets/kaye_ten_warp_mandarin_parent.pag",
              height: 130,
              width: 70,
            ),
          ),
        ),
        SizedBox(width: Get.width, height: 300),
        AnimatedPositioned(
          right: animationValue ? (Get.width / 2 - 12) : Get.width,
          duration: const Duration(milliseconds: 500),
          child: Transform.rotate(
            angle: -pi / 12.0,
            child: Container(
              width: 144,
              height: 204,
              decoration: BoxDecoration(
                color: const Color(0x66FF478C),
                borderRadius: BorderRadius.circular(28),
              ),
              alignment: Alignment.center,
              child: Container(
                width: 128,
                height: 188,
                decoration: BoxDecoration(
                  color: const Color(0xFFFF478C),
                  borderRadius: BorderRadius.circular(24),
                ),
                alignment: Alignment.center,
                child: KayeSydney.round(
                  url: avatarUrl2,
                  width: 120,
                  height: 180,
                  borderRadius: BorderRadius.circular(20),
                  clip: ImageClipType.middle,
                ),
              ),
            ),
          ),
        ),
        AnimatedPositioned(
          left: animationValue ? (Get.width / 2 - 12) : Get.width,
          duration: const Duration(milliseconds: 500),
          child: Transform.rotate(
            angle: pi / 12.0,
            child: Container(
              width: 144,
              height: 204,
              decoration: BoxDecoration(
                color: const Color(0x667E47FF),
                borderRadius: BorderRadius.circular(28),
              ),
              alignment: Alignment.center,
              child: Container(
                width: 128,
                height: 188,
                decoration: BoxDecoration(
                  color: const Color(0xFF7E47FF),
                  borderRadius: BorderRadius.circular(24),
                ),
                alignment: Alignment.center,
                child: KayeSydney.round(
                  url: avatarUrl1,
                  width: 120,
                  height: 180,
                  borderRadius: BorderRadius.circular(20),
                  clip: ImageClipType.middle,
                ),
              ),
            ),
          ),
        ),
        AnimatedOpacity(
          opacity: animationValue ? 1 : 0,
          duration: const Duration(milliseconds: 500),
          child: Padding(
            padding: const EdgeInsets.only(top: 120),
            child: KayeSydney.local(
              fileName: "kaye_ten_ic_warp_discourage_baseball",
              width: 80,
              height: 80,
            ),
          ),
        ),
      ],
    );
  }
}
