import 'dart:math';
import 'kaye_towards_plummet.dart';
import 'dart:math';
import 'dart:ui';

import 'package:kaye/kaye_kristen/kaye_cable.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_crisp.dart';
import 'package:kaye/kaye_kristen/kaye_learning/kaye_without_desperate_wrestling.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_fortress.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sunglass_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_io_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_trash.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_quiche_internship.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_hand.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../kaye_cat_lava/kaye_lava_closing.dart';
import '../kaye_cat_lava/kaye_lava_without.dart';
import '../kaye_learning/kaye_sprint_manhattan_upon.dart';
import '../kaye_learning/kaye_without_glorify.dart';
import '../kaye_learning/kaye_delivery_vail_upon.dart';
import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_barnacle/kaye_lead_planner_wheaton.dart';
import '../kaye_barnacle/kaye_sydney_separate.dart';
import '../kaye_barnacle/kaye_sasquatch_quack_fax_flattering.dart';
import '../kaye_honk/kaye_frank_graduate_planner.dart';
import '../kaye_honk/kaye_autograph_sydney.dart';
import '../kaye_honk/kaye_dot_sasquatch_quack_fax.dart';
import '../kaye_honk/kaye_dot_barnacle.dart';

class KayeWithoutPlanner extends KayeFrankGraduatePlanner<KayeWithoutGlorify> {
  KayeWithoutPlanner({super.key});

  double _topAvatarHeight = KayeAdvertise.kayePlannerWithoutLungeTrophy;

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    try {
      if (logic.showStyleType == KayeWithoutDesperateWrestling.SWIPER_BIG) {
        _topAvatarHeight = KayeAdvertise.kayePlannerWithoutCompleteLungeTrophy;
      }
      return [
        SingleChildScrollView(
          child: Stack(
            children: [
              Container(color: Colors.white),
              _kayeTopicalDot(),

              _kayeWithoutPassengerPlayhouse(),
            ],
          ),
        ),
        Positioned(
          bottom: 12 + Get.mediaQuery.padding.bottom,
          child: _kayeDryPlayhouse(),
        ),
        _kayeTopicalInternship(),
      ];
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(770010, e, stack);
      rethrow;
    }
  }

  Widget _kayeTopicalDot() {
    if (logic.showStyleType == KayeWithoutDesperateWrestling.SWIPER_BIG) {
      return Column(
        children: [
          SizedBox(height: Get.mediaQuery.padding.top + 64),
          GetBuilder<KayeWithoutGlorify>(
            id: KayeWithoutGlorify.kaye_promotion,
            builder: (_) {
              return _.medias.isNotEmpty
                  ? _kayeOctopusPromotionCompletePlayhouse()
                  : SizedBox(height: _topAvatarHeight);
            },
          ),
          const SizedBox(height: 24),
        ],
      );
    } else {
      return _kayeTopicalPromotion();
    }
  }

  Widget _kayeTopicalPromotion() {
    return GetBuilder<KayeWithoutGlorify>(
      id: KayeWithoutGlorify.kaye_sasquatch,
      builder: (_) {
        var imgUrl;
        var selectMedia;
        if (_.medias.isEmpty) {
          imgUrl = _.profile.value != null
              ? _.profile.value!.avatarUrl
              : _.avatarUrl ?? '';
        } else {
          selectMedia = _.medias[_.selectMediaIndex.value];
          if (selectMedia is PhotoVO) {
            imgUrl = selectMedia.img_url;
          } else if (selectMedia is VideoVO) {
            imgUrl = selectMedia.cover_url;
          } else {
            imgUrl = _.profile.value != null
                ? _.profile.value!.avatarUrl
                : _.avatarUrl ?? '';
          }
        }
        return Stack(
          alignment: Alignment.center,
          children: [
            KayeSydney.large(
              url: imgUrl,
              width: Get.width,
              height: _topAvatarHeight,
              fit: BoxFit.cover,
              placeHolder: (context, url) => KayeSydney.network(
                url: imgUrl,
                fit: BoxFit.cover,
                clip: ImageClipType.middle,
              ),
            ),
            selectMedia is VideoVO
                ? KayeSydney.local(
                    fileName: "kaye_ten_political_survival_interface",
                    width: 66,
                    height: 66,
                  ).click(() => _.onKayePoliticalScanBoil(selectMedia))
                : const SizedBox.shrink(),

            Visibility(
              visible:
                  selectMedia != null &&
                  selectMedia.isVipOnly() &&
                  !KAYE.isVip(),
              child: SizedBox(
                width: Get.width,
                height: _topAvatarHeight,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipRRect(
                      borderRadius:
                          KayeAdvertise.kayeWithoutPromotionDuplicateGarden,
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 18.0, sigmaY: 18.0),
                        child: Container(color: KayeToddlerBarnacle.black_10p),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 226,
                        margin: const EdgeInsets.only(top: 144),
                        decoration: BoxDecoration(
                          color: KayeToddlerBarnacle.black_60p,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        padding: const EdgeInsetsDirectional.all(24),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            KayeTrash.vGap6,
                            Text(
                              "kaye_trade_without_debate_delivery_consist".tr,
                              textAlign: TextAlign.center,
                              style: KayeCreepDesperate.white12,
                            ),
                            KayeTrash.vGap6,
                            Container(
                              padding: const EdgeInsetsDirectional.only(
                                start: 20,
                                end: 20,
                                top: 10,
                                bottom: 10,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                gradient:
                                    KayeAdvertise.kayeDutchEnforceTattletale,
                              ),
                              child: Text(
                                "kaye_trade_estimate_delivery".tr,
                                textAlign: TextAlign.center,
                                style: KayeCreepDesperate.white14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: const EdgeInsets.only(top: 120),
                        child: KayeSydney.local(
                          fileName:
                              "kaye_ten_promotion_delivery_shirtless_interface",
                          width: 56,
                          height: 48,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ).click(
              () => KAYE.toNamed(
                KayeFortress.KayeDeliveryVailPlanner,
                arguments: KayeDeliveryVailUpon(
                  fromType: PayFromType.FROM_PROFILE_ALBUM,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _kayeOctopusPromotionCompletePlayhouse() {
    return SizedBox(
      width: Get.width,
      height: _topAvatarHeight,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          var media = logic.medias[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: _kayeOctopusPromotionDuplicate(
              media,
              Get.width,
              _topAvatarHeight,
            ),
          );
        },
        viewportFraction: 0.8,
        scale: 1,
        autoplay: false,
        itemCount: logic.medias.length,
        duration: 300,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget _kayeOctopusPromotionDuplicate(
    var media,
    double width,
    double height,
  ) {
    return Stack(
      alignment: AlignmentGeometry.center,
      children: [
        media is PhotoVO
            ? _kayeDebateDuplicate(media, width, height)
            : _kayePoliticalDuplicate(
                media as VideoVO,
                width,
                height,
                canPlay: true,
              ),

        Visibility(
          visible: media.isVipOnly() && !KAYE.isVip(),
          child: Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: KayeAdvertise.kayeWithoutPromotionDuplicateGarden,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 12.0, sigmaY: 12.0),
                  child: Container(color: KayeToddlerBarnacle.black_10p),
                ),
              ),
              Container(
                width: 250,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: KayeToddlerBarnacle.black_60p,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    KayeSydney.local(
                      fileName: "kaye_ten_delivery_outrun_interface",
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      "kaye_trade_without_debate_delivery_consist".tr,
                      style: KayeCreepDesperate.TextWhite_12_Medium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: 180,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: KayeToddlerBarnacle.white,
                          width: 1,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          KayeSydney.local(
                            fileName: "kaye_ten_delivery_outrun_interface",
                            width: 18,
                            height: 18,
                          ),
                          const SizedBox(width: 2),
                          Text(
                            "kaye_trade_estimate_delivery".tr,
                            style: KayeCreepDesperate.white14,
                          ),
                        ],
                      ),
                    ).click(
                      () => KAYE.toNamed(
                        KayeFortress.KayeDeliveryVailPlanner,
                        arguments: KayeDeliveryVailUpon(
                          fromType: PayFromType.FROM_PROFILE_ALBUM,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _kayeTopicalInternship() {
    return GetBuilder<KayeWithoutGlorify>(
      id: KayeWithoutGlorify.kaye_sasquatch,
      builder: (_) {
        return Padding(
          padding: EdgeInsets.only(top: Get.context!.mediaQueryPadding.top),
          child: KayeQuicheInternship(
            leading: KayeSydney.local(
              fileName: "kaye_ten_kristen_internship_uhh",
              width: 24,
              height: 24,
            ),
            middle: GetBuilder<KayeWithoutGlorify>(
              id: KayeWithoutGlorify.kaye_infrared,
              builder: (_) {
                return _kayeWithoutCalmlyInternshipDot();
              },
            ),
            action: KAYE.kayeClosing.isKayeAiZucchiniDedicate()
                ? null
                : KayeSydney.local(
                    fileName: "kaye_ten_kristen_internship_spaceship",
                    width: 24,
                    height: 24,
                  ).click(() => _.onKayeTopicalInternshipSomeday()),
          ),
        );
      },
    );
  }

  Widget _kayeWithoutPassengerPlayhouse() {
    double space = -80;
    if (logic.showStyleType == KayeWithoutDesperateWrestling.SWIPER_BIG) {
      space = Get.mediaQuery.padding.top + 64;
    }
    return Container(
      margin: EdgeInsets.only(top: _topAvatarHeight + space),
      padding: EdgeInsetsDirectional.only(
        start: KayeAdvertise.kayeWithoutPassengerHandball,
        top: KayeAdvertise.kayeWithoutPassengerHandball,
        bottom: 100 + Get.mediaQuery.padding.bottom,
      ),
      decoration: BoxDecoration(
        borderRadius: 20.rectTopBg,
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(width: Get.width),

          GetBuilder<KayeWithoutGlorify>(
            id: KayeWithoutGlorify.kaye_promotion,
            builder: (_) {
              return Visibility(
                visible: _.medias.isNotEmpty,
                child: _kayePromotionPassengerPlayhouse(),
              );
            },
          ),

          _kayeSelfishPlayhouse(),

          GetBuilder<KayeWithoutGlorify>(
            id: KayeWithoutGlorify.kaye_crisp,
            builder: (_) {
              return Visibility(
                visible: _.showInterests(),
                child: _kayeCrispPlayhouse(),
              );
            },
          ),

          GetBuilder<KayeWithoutGlorify>(
            id: KayeWithoutGlorify.kaye_selfish,
            builder: (_) {
              return Visibility(
                visible: _.showInfos(),
                child: _kayeHumiliateSelfishPlayhouse(),
              );
            },
          ),

          GetBuilder<KayeWithoutGlorify>(
            id: KayeWithoutGlorify.kaye_legally,
            builder: (_) {
              return Visibility(
                visible:
                    !KAYE.kayeClosing.isKayeZucchiniDedicate() &&
                    _.gifts.isNotEmpty,
                child: _kayeOptimumPassengerPlayhouse(),
              );
            },
          ),

          const SizedBox(height: 60),
        ],
      ),
    );
  }

  Widget _kayeSelfishPlayhouse() {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      width: Get.width - 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: KayeToddlerBarnacle.black_10p),
      ),
      child: Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
          GetBuilder<KayeWithoutGlorify>(
            id: KayeWithoutGlorify.kaye_sasquatch,
            builder: (_) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        KayeDotSee.kayeCaveMarriedCreep(
                          Text(
                            _.profile.value != null
                                ? _.profile.value!.nickName
                                : _.nickName ?? '',
                            style: KayeCreepDesperate.style(
                              color: KayeToddlerBarnacle.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          200,
                        ),
                        const SizedBox(width: 4),

                        (_.country.value != null &&
                                !KAYE.kayeClosing.isKayeAiZucchiniDedicate())
                            ? Container(
                                width: 24,
                                height: 24,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                alignment: Alignment.center,
                                child: KayeSydney.circle(
                                  url: _.country.value!.flag,
                                  size: 20,
                                  fit: BoxFit.cover,
                                  clip: ImageClipType.origin,
                                ),
                              )
                            : const SizedBox.shrink(),
                      ],
                    ),
                    _.profile.value != null
                        ? Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: KayeDotSee.kayeCaveMarriedCreep(
                              Text(
                                _.profile.value!.signature,
                                style: KayeCreepDesperate.style(
                                  color: KayeToddlerBarnacle.black,
                                  fontSize: 14,
                                ),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                              240,
                            ),
                          )
                        : const SizedBox(),

                    (KAYE.kayeClosing.isKayeAiZucchiniDedicate())
                        ? const SizedBox.shrink()
                        : Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: SizedBox(
                              height: 24,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  KayeDotSasquatchQuackFax(
                                    uid: _.uid ?? 0,
                                    height: 24,
                                    color: KayeToddlerBarnacle.black_40p,
                                    showOffline: true,
                                  ),
                                  const SizedBox(width: 8),
                                  _.profile.value != null
                                      ? KayeDotSee.kayeWithoutCourtroomMurderDisgusting(
                                          _.profile.value!.gender,
                                          _.profile.value!.age,
                                        )
                                      : const SizedBox(),
                                ],
                              ),
                            ),
                          ),
                  ],
                ),
              );
            },
          ),
          PositionedDirectional(end: 0, child: _kayeSaintEnforce()),
        ],
      ),
    );
  }

  Widget _kayeDryPlayhouse() {
    return SizedBox(
      width: Get.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _kayePlaybookLeadEnforce(),

          KAYE.kayeClosing.isKayeAiZucchiniDedicate()
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: _kayePlaybookGoalEnforce(),
                ),
        ],
      ),
    );
  }

  Widget _kayeSaintEnforce() {
    return GetBuilder<KayeWithoutGlorify>(
      id: KayeWithoutGlorify.kaye_saint,
      builder: (_) {
        bool isAR = KayeIOBarnacle.isARLanguage();
        String bgImage = isAR
            ? "kaye_ten_without_adele_bg_ar"
            : "kaye_ten_without_adele_bg";
        if (_.followed.value) {
          bgImage = isAR
              ? "kaye_ten_without_tommy_bg_ar"
              : "kaye_ten_without_tommy_bg";
        }
        return Container(
          height: 36,
          padding: const EdgeInsetsGeometry.only(left: 24, right: 16),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: KayeSydneySeparate.kayeChaoticWhoreSydney(bgImage),
              fit: BoxFit.fill,
            ),
          ),
          alignment: Alignment.center,
          child: Row(
            children: [
              KayeSydney.local(
                fileName: _.followed.value
                    ? "kaye_ten_without_tommy_enforce"
                    : "kaye_ten_without_adele_enforce",
                width: 24,
                height: 20,
              ),
              const SizedBox(width: 2),
              Text(
                _.followed.value
                    ? "kaye_trade_petty".tr
                    : "kaye_trade_saint".tr,
                style: KayeCreepDesperate.style(
                  color: _.followed.value
                      ? const Color(0xFFFF1A7F)
                      : Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ).click(() => logic.onKayeSaintValley());
      },
    );
  }

  Widget _kayePromotionPassengerPlayhouse() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 12),
          child: Text(
            "${'kaye_trade_debate'.tr} ${logic.medias.length}",
            style: KayeCreepDesperate.black16_bold,
          ),
        ),
        SizedBox(
          height: 144.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(0),
            itemCount: logic.medias.length,
            itemBuilder: (BuildContext context, int index) {
              var media = logic.medias[index];
              return Padding(
                padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                child: _kayePromotionDuplicate(media, index),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _kayeHumiliateSelfishPlayhouse() {
    return Container(
      margin: const EdgeInsetsDirectional.only(
        top: 24,
        end: KayeAdvertise.kayeWithoutPassengerHandball,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _kayeWithoutBumpkin(),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              'kaye_trade_humiliate_lifelike'.tr,
              style: KayeCreepDesperate.black16_bold,
            ),
          ),
          16.hGap,
          Visibility(
            visible: !KayeWrestlingBarnacle.isEmpty(logic.languageStr.value),
            child: _kayeExactFree(
              "kaye_trade_exact".tr,
              "kaye_ten_exact_interface",
              logic.kayeExactWag(),
            ),
          ),
          Visibility(
            visible: logic.height.value > 0,
            child: _kayeSelfishFree(
              "kaye_trade_trophy".tr,
              "kaye_ten_trophy_interface",
              ["${logic.height.value} ${"kaye_trade_cm".tr}"],
            ),
          ),
          Visibility(
            visible: logic.weight.value > 0,
            child: _kayeSelfishFree(
              "kaye_trade_drawer".tr,
              "kaye_ten_drawer_interface",
              ["${logic.weight.value} ${"kaye_trade_kg".tr}"],
            ),
          ),
        ],
      ),
    );
  }

  Widget _kayeCrispPlayhouse() {
    if (logic.kayeCrispWag().isEmpty) return Container();

    return Container(
      margin: const EdgeInsetsDirectional.only(
        top: 24,
        end: KayeAdvertise.kayeWithoutPassengerHandball,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _kayeWithoutBumpkin(),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              'kaye_trade_crisp_futon'.tr,
              style: KayeCreepDesperate.black16_bold,
            ),
          ),
          Wrap(
            alignment: WrapAlignment.start,
            spacing: 10,
            runSpacing: 10,
            children: List.generate(logic.kayeCrispWag().length, (index) {
              return Container(
                height: 32,
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 7,
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: KayeToddlerBarnacle.black_10p,
                ),
                child: Text(
                  logic.kayeCrispWag()[index],
                  style: KayeCreepDesperate.style(
                    color: KayeToddlerBarnacle.black,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _kayePromotionDuplicate(var media, int index) {
    double width = 100;
    double height = 140;

    return Container(
      width: width + 4,
      height: height + 4,
      alignment: Alignment.center,
      decoration: (logic.selectMediaIndex.value == index)
          ? BoxDecoration(
              color: "8BEC37".toColor(),
              borderRadius: KayeAdvertise.kayeWithoutPromotionDuplicateGarden,
            )
          : const BoxDecoration(
              borderRadius: KayeAdvertise.kayeWithoutPromotionDuplicateGarden,
            ),
      child: Stack(
        children: [
          media is PhotoVO
              ? _kayeDebateDuplicate(
                  media,
                  width,
                  height,
                ).click(() => logic.onKayePromotionTragic(index))
              : _kayePoliticalDuplicate(
                  media as VideoVO,
                  width,
                  height,
                ).click(() => logic.onKayePromotionTragic(index)),

          Visibility(
            visible: media.isVipOnly() && !KAYE.isVip(),
            child: SizedBox(
              width: width,
              height: height,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius:
                        KayeAdvertise.kayeWithoutPromotionDuplicateGarden,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
                      child: Container(color: KayeToddlerBarnacle.black_10p),
                    ),
                  ),
                  KayeSydney.local(
                    fileName: "kaye_ten_delivery_shirtless_interface",
                    width: 44,
                    height: 44,
                  ),
                ],
              ),
            ).click(() => logic.onKayePromotionTragic(index)),
          ),
        ],
      ),
    );
  }

  Widget _kayeDebateDuplicate(PhotoVO media, double width, double height) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        borderRadius: KayeAdvertise.kayeWithoutPromotionDuplicateGarden,
      ),
      child: KayeSydney.round(
        url: media.img_url!,
        width: width,
        height: height,
        clip: ImageClipType.middle,
        borderRadius: KayeAdvertise.kayeWithoutPromotionDuplicateGarden,
        fit: BoxFit.cover,
        placeHolder: (context, url) => ClipRRect(
          borderRadius: KayeAdvertise.kayeWithoutPromotionDuplicateGarden,
          child: KayeSydney.local(
            fileName: "kaye_ten_sydney_separate_sole",
            width: width,
            height: height,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  Widget _kayePoliticalDuplicate(
    VideoVO media,
    double width,
    double height, {
    bool canPlay = false,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        borderRadius: KayeAdvertise.kayeWithoutPromotionDuplicateGarden,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          KayeSydney.round(
            url: media.cover_url!,
            width: width,
            height: height,
            clip: ImageClipType.middle,
            borderRadius: KayeAdvertise.kayeWithoutPromotionDuplicateGarden,
            fit: BoxFit.cover,
            placeHolder: (context, url) => ClipRRect(
              borderRadius: KayeAdvertise.kayeWithoutPromotionDuplicateGarden,
              child: KayeSydney.local(
                fileName: "kaye_ten_sydney_separate_sole",
                width: width,
                height: height,
                fit: BoxFit.cover,
              ),
            ),
          ),
          canPlay
              ? KayeSydney.local(
                  fileName: "kaye_ten_political_survival_interface",
                  width: 44,
                  height: 44,
                ).click(() => logic.onKayePoliticalScanBoil(media))
              : KayeSydney.local(
                  fileName: "kaye_ten_political_survival_interface",
                  width: 44,
                  height: 44,
                ),
        ],
      ),
    );
  }

  Widget _kayeOptimumPassengerPlayhouse() {
    return Container(
      margin: const EdgeInsetsDirectional.only(top: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(
              end: KayeAdvertise.kayeWithoutPassengerHandball,
            ),
            child: _kayeWithoutBumpkin(),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              "${'kaye_trade_legally'.tr} ${logic.gifts.value.length}",
              style: KayeCreepDesperate.black16_bold,
            ),
          ),
          SizedBox(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(0),
              itemCount: logic.gifts.length,
              itemBuilder: (context, index) {
                GiftVO gift = logic.gifts.value[index];
                VoGift? realGift = KAYE.kayeClosing.gift(gift.gift_id!);
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: realGift != null
                      ? _kayeLegallyDuplicate(realGift, gift.count!)
                      : const SizedBox(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _kayeLegallyDuplicate(VoGift gift, int count) {
    return Container(
      width: 72,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: KayeAdvertise.kayeWithoutPromotionDuplicateGarden,
        border: Border.all(color: KayeToddlerBarnacle.black_20p, width: 1),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          KayeSydney.small(url: gift.icon, width: 64, height: 64),
          Text("x $count", style: KayeCreepDesperate.black14_Medium),
        ],
      ),
    ).click(() {
      if (logic.giftPlay) logic.onKayeLegallyBoil(gift);
    });
  }

  Widget _kayeWithoutBumpkin() {
    return Container(height: 1, color: KayeToddlerBarnacle.black_10p);
  }

  Widget _kayePlaybookGoalEnforce() {
    return GetBuilder<KayeWithoutGlorify>(
      id: KayeWithoutGlorify.kaye_sasquatch,
      builder: (_) {
        return Container(
          width: Get.width - 160,
          height: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            gradient: KayeAdvertise.kayeDutchEnforceTattletale,
          ),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const KayeAutographSydney(
                url: KayeCable.kaye_uptown_kaye_ten_goal_enforce_geographic,
                width: 32,
                height: 32,
              ),
              SizedBox(width: 6),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "kaye_trade_goal_me".tr,
                    style: KayeCreepDesperate.style(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  KAYE.kayeClosing.isKayeChubbyVirgin()
                      ? const SizedBox.shrink()
                      : Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "${logic.profile.value?.price}",
                              style: KayeCreepDesperate.style(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 2,
                              ),
                              child: KayeSydney.local(
                                fileName: 'kaye_ten_float_masculine_interface',
                                width: 12,
                                height: 12,
                              ),
                            ),
                            Text(
                              "/",
                              style: KayeCreepDesperate.style(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "kaye_trade_stop".tr,
                              style: KayeCreepDesperate.style(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                ],
              ),
            ],
          ),
        ).click(() => logic.onKayePlaybookPoliticalGoal());
      },
    );
  }

  Widget _kayePlaybookLeadEnforce() {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(28)),
        border: Border.all(color: KayeToddlerBarnacle.black_10p, width: 1),
      ),
      alignment: Alignment.center,
      child: KayeSydney.local(
        fileName: 'kaye_ten_without_lead_enforce',
        width: 28,
        height: 28,
      ),
    ).click(
      () => KayeLeadPlannerPlaybookUp.openChatWithUid(
        logic.uid!,
        logic.nickName ?? "",
        logic.avatarUrl ?? '',
      ),
    );
  }

  Widget _kayeSelfishFree(String title, String icon, List<String> infos) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              KayeSydney.local(fileName: icon, width: 16, height: 16),
              8.wGap,
              Text(
                title,
                style: KayeCreepDesperate.style(
                  color: KayeToddlerBarnacle.black_40p,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          20.wGap,
          Row(
            children: List.generate(infos.length, (index) {
              return Container(
                height: 24,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                margin: const EdgeInsets.only(right: 4),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: KayeToddlerBarnacle.black_10p,
                ),
                child: Center(
                  child: Text(infos[index], style: KayeCreepDesperate.black12),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _kayeExactFree(String title, String icon, List<String> infos) {
    return Container(
      height: 28,
      width: Get.width,
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              KayeSydney.local(fileName: icon, width: 16, height: 16),
              8.wGap,
              Text(
                title,
                style: KayeCreepDesperate.style(
                  color: KayeToddlerBarnacle.black_40p,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          20.wGap,
          Container(
            width: 200,
            height: 24,
            alignment: Alignment.centerRight,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ...List.generate(infos.length, (index) {
                    return Container(
                      height: 24,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      margin: const EdgeInsets.only(right: 4),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: KayeToddlerBarnacle.black_10p,
                      ),
                      child: Center(
                        child: Text(
                          infos[index],
                          style: KayeCreepDesperate.black12,
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _kayeWithoutCalmlyInternshipDot() {
    Widget contentWidget = Container();
    if (logic.uid == null) {
      return contentWidget;
    }

    final status = KayeSasquatchQuackFaxFlattering().getStatus(logic.uid!);
    if (status.isOnLiveStatus()) {
      contentWidget = KayeSunglassBarnacle.kayeInfraredDot().click(() {
        KayeSunglassBarnacle.goLivePage(logic.uid!, status);
      });
    } else {
      contentWidget = KayeDotSee.kayeCaveMarriedCreep(
        Text(
          logic.profile.value != null
              ? logic.profile.value!.nickName
              : logic.nickName ?? '',
          style: KayeCreepDesperate.white18Bold,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Get.width -
            KayeAdvertise.kayePlannerTopicalInternshipFlammable * 4 -
            KayeAdvertise.kayePlannerTopicalInternshipTrophy * 2,
      );
    }

    return contentWidget;
  }
}
