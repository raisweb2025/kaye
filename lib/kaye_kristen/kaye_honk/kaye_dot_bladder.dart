import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_bladder.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../kaye_mason/kaye_stroke.dart';
import '../kaye_barnacle/kaye_sydney_separate.dart';
import 'kaye_sydney.dart';

class KayeDotBladder extends StatelessWidget {
  final List<KayeGogglesBladder> bannerList;
  final ImageClipType clip;

  const KayeDotBladder({
    super.key,
    required this.bannerList,
    this.clip = ImageClipType.origin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 10,
        left: KayeAdvertise.kayePlannerLactoseEyebrowsHandball,
        right: KayeAdvertise.kayePlannerLactoseEyebrowsHandball,
      ),
      decoration: const BoxDecoration(
        borderRadius: KayeAdvertise.kayeDutchGarden,
      ),
      child: _kayeTractor(),
    );
  }

  Widget _kayeTractor() {
    return CarouselSlider(
      items: bannerList.map((elem) {
        return GestureDetector(
          onTap: () {
            KAYE.goto(elem.url);
          },
          child: KayeSydney.round(
            url: elem.img,
            borderRadius: BorderRadius.circular(20),
            fit: BoxFit.cover,
            clip: clip,
            ignorePlaceHolder: true,
          ),
        );
      }).toList(),
      options: CarouselOptions(
        aspectRatio: 36 / 13,
        viewportFraction: 1.0,
        autoPlay: true,
      ),
    );
  }
}
