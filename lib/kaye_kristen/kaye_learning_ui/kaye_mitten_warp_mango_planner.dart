import 'dart:math';
import 'kaye_infrared_order.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_warp_political_perfect_passenger_marge.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_autograph_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_trash.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../kaye_cable.dart';
import '../kaye_advertise.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_classy/kaye_enforce_creep.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_classy/kaye_hand.dart';
import '../kaye_honk/kaye_frank_planner.dart';
import '../kaye_honk/kaye_warp_target_dunphy_superhero.dart';
import '../kaye_honk/kaye_dot_barnacle.dart';
import '../kaye_honk/kaye_dot_political_playhouse.dart';
import 'package:get/get.dart';
import 'kaye_mitten_warp_mango_glorify.dart';

class KayeMittenWarpMangoPlanner
    extends KayeFrankPlanner<KayeMittenWarpMangoGlorify> {
  KayeMittenWarpMangoPlanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildVideoBackground(),
        _kayeSweet(context),
        _buildBottomCards(),
        _kayeChihuahuaPlaybookElectrify(),
        _centerCard(),
      ],
    );
  }

  Widget _buildVideoBackground() {
    return GetBuilder<KayeMittenWarpMangoGlorify>(
      id: logic.kaye_survival,
      builder: (logic) {
        return logic.playController == null || !logic.videoPlayerInitialized
            ? KayeSydney.local(
                fileName: "kaye_ten_mango_warp_bg",
                width: Get.width,
                height: Get.height,
                fit: BoxFit.cover,
              )
            : VideoPlayer(logic.playController!);
      },
    );
  }

  Widget _buildBottomCards() {
    const int itemCount = 8;

    return Positioned(
      left: 0,
      right: 0,
      bottom: 58,
      child: SizedBox(
        height: 320,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 272,
              child: GetBuilder<KayeMittenWarpMangoGlorify>(
                id: logic.kaye_someday_satellite,
                builder: (logic) {
                  return CarouselSlider.builder(
                    itemCount: itemCount,
                    itemBuilder: (context, index, realIndex) =>
                        _buildCard(index),
                    options: CarouselOptions(
                      height: 272,
                      viewportFraction: 0.4,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      autoPlay: logic.isAutoScrolling,
                      autoPlayInterval: const Duration(milliseconds: 400),
                      autoPlayAnimationDuration: const Duration(
                        milliseconds: 400,
                      ),
                      autoPlayCurve: Curves.linear,
                      pauseAutoPlayOnTouch: false,
                      enlargeCenterPage: false,
                      scrollPhysics: const NeverScrollableScrollPhysics(),
                      onPageChanged: (index, reason) {
                        logic.currentPage = index;
                        if (!logic.isAutoScrolling) {
                          logic.onStoppedAndPopCenterCard(index % itemCount);
                        }
                      },
                    ),
                    carouselController: logic.autoController,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(int index) {
    String imageName = logic.images.isNotEmpty
        ? logic.images[index % logic.images.length]
        : "kaye_ten_warp_tease";

    return GetBuilder<KayeMittenWarpMangoGlorify>(
      id: logic.kaye_pawn_increase,
      builder: (logic) {
        final shouldFlip = logic.isFlipping && (index == logic.overlayIndex);
        KayeWarpSasquatch? matchUser = logic.getMatchUser();
        return SizedBox(
          width: 160,
          height: 272,
          child: AnimatedBuilder(
            animation: logic.flipController ?? const AlwaysStoppedAnimation(0),
            builder: (context, child) {
              final flipValue = shouldFlip
                  ? (logic.flipController?.value ?? 0)
                  : 0;
              final angle = flipValue * 3.14159;

              return Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..rotateY(angle),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: angle <= 1.57
                            ? KayeSydney.local(
                                fileName: imageName,
                                fit: BoxFit.cover,
                              )
                            : Transform(
                                alignment: Alignment.center,
                                transform: Matrix4.rotationY(3.14159),
                                child: matchUser == null
                                    ? KayeSydney.local(
                                        fileName: imageName,
                                        fit: BoxFit.cover,
                                      )
                                    : KayeAutographSydney(
                                        url: matchUser.user?.avatarUrl ?? "",
                                        fit: BoxFit.cover,
                                        width: 160,
                                        height: 210,
                                      ),
                              ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _centerCard() {
    double width = Get.width - 28 * 2;
    return GetBuilder<KayeMittenWarpMangoGlorify>(
      id: logic.kaye_pedestrian_duplicate,
      builder: (logic) {
        KayeWarpSasquatch? matchUser = logic.getMatchUser();
        return logic.showOverlay && matchUser != null
            ? Positioned.fill(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double maxHeight = constraints.maxHeight;

                    double cardWidth = Get.width - 56;
                    double cardHeight = (maxHeight) * 0.8;

                    return Container(
                      color: KayeToddlerBarnacle.black_40p,
                      alignment: Alignment.center,
                      child: Container(
                        width: cardWidth,
                        height: cardHeight,
                        alignment: Alignment.center,
                        child: AnimatedBuilder(
                          animation: logic.overlayController!,
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: 24.rectBg,
                                  color: KayeToddlerBarnacle.white,
                                ),
                                padding: const EdgeInsets.all(4),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: !matchUser.hasVideo
                                          ? KayeAutographSydney(
                                              url:
                                                  matchUser.user?.avatarUrl ??
                                                  "",
                                              height: cardHeight - 80,
                                              width: cardWidth,
                                              fit: BoxFit.cover,
                                            )
                                          : SizedBox(
                                              width: cardWidth - 8,
                                              height: cardHeight - 80 - 8,
                                              child: KayeDotPoliticalPlayhouse(
                                                netPath:
                                                    matchUser.video!.videoUrl!,
                                              ),
                                            ),
                                    ),
                                    PositionedDirectional(
                                      end: 8,
                                      top: 8,
                                      child: KayeSydney.local(
                                        fileName:
                                            "kaye_ic_steak_warp_interface",
                                        width: 36,
                                        height: 36,
                                      ).click(logic.hideOverlay),
                                    ),
                                    PositionedDirectional(
                                      end: 0,
                                      bottom: 0,
                                      start: 0,
                                      child: Container(
                                        height: 100,
                                        decoration: BoxDecoration(
                                          borderRadius: 20.rectBtmBg,
                                          gradient: KayeAdvertise
                                              .kayeSquintTattletale,
                                        ),
                                      ),
                                    ),
                                    PositionedDirectional(
                                      start: 12,
                                      bottom: 16,
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                            ),
                                            padding: const EdgeInsets.all(2),
                                            child: KayeSydney.circle(
                                              url:
                                                  matchUser.user?.avatarUrl ??
                                                  "",
                                              size: 64,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          KayeTrash.hGap8,
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                matchUser.user?.nickName ?? "",
                                                style: KayeCreepDesperate
                                                    .kaye_creep_h1_tremendous,
                                              ),
                                              Row(
                                                children: [
                                                  KayeDotSee.kayeDutchLatin(
                                                    matchUser.country,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  width: width,
                                  child: Stack(
                                    children: [
                                      PositionedDirectional(
                                        top: 12,
                                        start: 0,
                                        end: 0,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            _kayePlaybookLeadEnforce(),
                                            KayeTrash.hGap12,
                                            Expanded(
                                              child: _kayePlaybookGoalEnforce(),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional.topEnd,
                                        child: Container(
                                          margin:
                                              const EdgeInsetsDirectional.only(
                                                end: 6,
                                                top: 4,
                                              ),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 12,
                                            vertical: 2,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadiusDirectional.only(
                                                  topStart: 14.radius,
                                                  topEnd: 14.radius,
                                                  bottomStart: 0.radius,
                                                  bottomEnd: 14.radius,
                                                ),
                                            gradient: KayeAdvertise
                                                .kayeFoundBgTattletale,
                                          ),
                                          child: Text(
                                            'kaye_trade_found'.tr,
                                            style: KayeAdvertise
                                                .kayeFoundCreepDesperate,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          builder: (context, child) {
                            double t = logic.overlayController?.value ?? 0;
                            final opacity = Curves.easeIn.transform(t);
                            final scale = Curves.easeOutBack.transform(t);
                            return Opacity(
                              opacity: opacity,
                              child: Transform.scale(
                                scale: scale,
                                child: child,
                              ),
                            );
                          },
                        ),
                      ).click(logic.hideOverlay),
                    );
                  },
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }

  Widget _kayePlaybookLeadEnforce() {
    KayeWarpSasquatch? matchUser = logic.getMatchUser();
    return matchUser == null
        ? const SizedBox.shrink()
        : Container(
            width: 80,
            height: 54,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(26)),
              gradient: LinearGradient(
                end: AlignmentDirectional.bottomStart,
                begin: AlignmentDirectional.topEnd,
                colors: [
                  Color(0xFFFFD65B),
                  Color(0xFFFF9E3B),
                  Color(0xFFFF681C),
                ],
              ),
            ),
            alignment: Alignment.center,
            child: KayeSydney.local(
              fileName: 'kaye_ten_warp_guinea_interface',
              width: 32,
              height: 32,
            ),
          ).click(logic.onKayeLead);
  }

  Widget _kayePlaybookGoalEnforce() {
    return GetBuilder<KayeMittenWarpMangoGlorify>(
      id: logic.kaye_sasquatch,
      builder: (_) {
        KayeWarpSasquatch? matchUser = logic.getMatchUser();
        return matchUser == null
            ? const SizedBox.shrink()
            : Container(
                height: 54,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(26)),
                  gradient: LinearGradient(
                    end: AlignmentDirectional.bottomStart,
                    begin: AlignmentDirectional.topEnd,
                    colors: [
                      Color(0xFF7552F3),
                      Color(0xFF9052F3),
                      Color(0xFFAB52F3),
                    ],
                  ),
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const KayeAutographSydney(
                      url: KayeCable
                          .kaye_uptown_kaye_ten_goal_enforce_geographic,
                      width: 32,
                      height: 32,
                    ),
                    const SizedBox(width: 2),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'kaye_trade_goal_me'.tr,
                          style: KayeCreepDesperate.white14Bold,
                        ),
                        !KAYE.kayeClosing.isKayeChubbyVirgin()
                            ? Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "${matchUser.user?.price}",
                                    style: KayeCreepDesperate.white12,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                    ),
                                    child: KayeSydney.local(
                                      fileName:
                                          'kaye_ten_float_masculine_interface',
                                      width: 14,
                                      height: 14,
                                    ),
                                  ),
                                  const Text(
                                    "/",
                                    style: KayeCreepDesperate.white12,
                                  ),
                                  Text(
                                    "kaye_trade_stop".tr,
                                    style: KayeCreepDesperate.white12,
                                  ),
                                ],
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ],
                ),
              ).click(logic.onKayeGoal);
      },
    );
  }

  Widget _kayeSweet(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 16,
        right: 16,
        top: MediaQuery.of(context).padding.top,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GetBuilder<KayeMittenWarpMangoGlorify>(
            id: logic.kaye_chocolate,
            builder: (logic) {
              return KayeSydney.local(
                fileName: logic.isMusicPlay
                    ? "kaye_ic_warp_chocolate_interface"
                    : "kaye_ic_warp_chocolate_winkle_interface",
                width: 36,
                height: 36,
              ).click(logic.playMusic);
            },
          ),
          Text(
            'kaye_trade_helo'.tr,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              shadows: [
                Shadow(color: Color(0xFFFF4FD8), blurRadius: 6),
                Shadow(color: Color(0xFFFF4FD8), blurRadius: 12),
                Shadow(color: Color(0xFFFF4FD8), blurRadius: 20),
              ],
            ),
          ),
          const SizedBox.shrink(),
        ],
      ),
    );
  }

  Widget _kayeChihuahuaPlaybookElectrify() {
    return Positioned(
      bottom: 22,
      left: 0,
      right: 0,
      child: Column(
        children: [
          SizedBox(
            width: 215,
            height: 70,
            child: GetBuilder<KayeMittenWarpMangoGlorify>(
              id: logic.kaye_is_helo,
              builder: (logic) {
                return logic.isMatching
                    ? const SizedBox.shrink()
                    : Center(
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            KayeElectrifyProven(
                              title: 'kaye_trade_theater_warp'.tr,
                              width: 215,
                              height: 56,
                              radius: 32,
                              onTap: logic.startAutoScroll,
                            ),

                            logic.isRegionMatchFirst20sChargeMode
                                ? const Positioned(
                                    right: -6,
                                    top: -8,
                                    child: KayeWarpTargetDunphySuperhero(),
                                  )
                                : GetBuilder<KayeMittenWarpMangoGlorify>(
                                    id: logic.kaye_amazing_is_delivery,
                                    builder: (logic) {
                                      if (logic.isVIP ||
                                          logic.remainingFreeCount < 0) {
                                        return const SizedBox.shrink();
                                      }
                                      return Positioned(
                                        right: -6,
                                        top: -8,
                                        child: _freeBadge(
                                          logic.remainingFreeCount,
                                        ),
                                      );
                                    },
                                  ),
                          ],
                        ),
                      );
                ;
              },
            ),
          ),
          logic.isRegionMatchFirst20sChargeMode
              ? Text(
                  KAYE.kayeClosing.regionMatchFirst20sChargeModeDesc(),
                  style: KayeCreepDesperate.white14,
                )
              : SizedBox(),
        ],
      ),
    );
  }

  Widget _freeBadge(int count) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        gradient: KayeAdvertise.kayeWarpFoundBgTattletale,
      ),
      child: Text(
        '${'kaye_trade_found'.tr} $count',
        style: KayeAdvertise.kayeFoundCreepDesperate,
      ),
    );
  }
}
