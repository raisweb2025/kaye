import 'dart:math';
import 'kaye_tacos_toothpick.dart';
import 'dart:async';

import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sunglass_barnacle.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../kaye_implant/kaye_lactose_thinner_implant.dart';
import '../kaye_cat_lava/kaye_lava_lactose.dart';
import '../kaye_goggles/kaye_goggles_bladder.dart';
import '../kaye_goggles/kaye_goggles_mover.dart';
import '../kaye_goggles/kaye_goggles_topical_mitten_enter.dart';
import '../kaye_goggles/kaye_sasquatch.dart';
import '../kaye_learning/kaye_mitten_lactose_magic_drove_wrestling.dart';
import '../kaye_learning/kaye_mitten_lactose_mover_passenger_wrestling.dart';
import 'package:flutter/cupertino.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_classy/kaye_hand.dart';
import '../kaye_barnacle/kaye_wrestling_barnacle.dart';
import '../kaye_honk/kaye_sydney.dart';
import '../kaye_honk/kaye_dot_bladder.dart';
import '../kaye_honk/kaye_dot_haze_satellite.dart';
import '../kaye_honk/kaye_dot_barnacle.dart';

class KayeSunglassLactosePlanner extends StatefulWidget {
  final KayeGogglesTopicalMittenEnter? args;
  final List<KayeGogglesBladder>? banners;
  final Function(KayeGogglesMover) onDataChanged;

  const KayeSunglassLactosePlanner({
    super.key,
    this.args,
    required this.onDataChanged,
    this.banners,
  });

  @override
  KayeSunglassLactosePlannerDonna createState() =>
      KayeSunglassLactosePlannerDonna();
}

class KayeSunglassLactosePlannerDonna
    extends State<KayeSunglassLactosePlanner> {
  late EasyRefreshController refreshController;

  bool isRefreshing = false;

  int page = 1;
  bool hasMore = true;

  List<KayeGogglesMover> regionList = [];

  List<KayeSasquatch> discoverList = [];
  Map<int, CountryVO> discoverCountryMap = {};

  StreamSubscription? refreshSubscription;

  StreamSubscription? _payOptionsUpdateSubscription;

  KayeGogglesMover selectedRegion = KayeGogglesMover();

  late KayeMittenLactoseMoverPassengerWrestling regionShowType;
  late KayeMittenLactoseMagicDroveWrestling anchorShowType;

  @override
  void initState() {
    super.initState();

    refreshController = EasyRefreshController(controlFinishLoad: true);

    refreshSubscription = KAYE.listen<KayeLactoseThinnerImplant>((event) {
      refreshController.callRefresh();
    });
    onKayePassengerThinner(showLoading: true);
    regionShowType = KayeMittenLactoseMoverPassengerWrestling.valueOf(
      widget.args?.regionType ??
          KayeMittenLactoseMoverPassengerWrestling.TAB.index,
    );

    anchorShowType = KayeMittenLactoseMagicDroveWrestling.valueOf(
      widget.args?.cardType ??
          KayeMittenLactoseMagicDroveWrestling.AVATAR_COVER.index,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _kayeYetPlayhouse();
  }

  Widget _kayeYetPlayhouse() {
    return EasyRefresh.builder(
      onRefresh: onKayePassengerThinner,
      onLoad: onKayePassengerChaoticSpaceship,
      controller: refreshController,
      triggerAxis: Axis.vertical,
      resetAfterRefresh: false,
      header: KayeDotSee.kayeThinnerIntercom(),
      footer: KayeDotSee.kayeThinnerPedal(),
      childBuilder: (BuildContext context, ScrollPhysics physics) {
        return CustomScrollView(
          physics: physics,
          slivers: [
            SliverToBoxAdapter(child: _kayeAIBladder()),

            SliverToBoxAdapter(child: buildKayeBladderDot()),

            regionList.isEmpty ||
                    regionShowType !=
                        KayeMittenLactoseMoverPassengerWrestling.TAB ||
                    KAYE.kayeClosing.isKayeZucchiniDedicate()
                ? const SliverToBoxAdapter()
                : SliverToBoxAdapter(child: _kayeMoverPassengerPlayhouse()),

            regionList.isEmpty ||
                    regionShowType !=
                        KayeMittenLactoseMoverPassengerWrestling.DROPDOWN_TOP ||
                    KAYE.kayeClosing.isKayeZucchiniDedicate()
                ? const SliverToBoxAdapter()
                : SliverToBoxAdapter(
                    child: _kayeSpeechlessSatellitePlayhouse(),
                  ),

            discoverList.isEmpty
                ? SliverToBoxAdapter(
                    child: isRefreshing
                        ? const SizedBox()
                        : KayeSunglassBarnacle.kayeNoTieInterface(),
                  )
                : SliverPadding(
                    padding: const EdgeInsets.all(
                      KayeAdvertise.kayePlannerLactoseEyebrowsHandball,
                    ),
                    sliver: _kayeLactoseEyebrowsPlayhouse(),
                  ),
          ],
        );
      },
    );
  }

  Widget buildKayeBladderDot() {
    if (KAYE.kayeClosing.isKayeZucchiniDedicate() ||
        KayeWrestlingBarnacle.isEmpty(widget.banners)) {
      return const SizedBox.shrink();
    }
    return KayeDotBladder(bannerList: widget.banners!);
  }

  Widget _kayeAIBladder() {
    if (!KAYE.kayeClosing.isKayeAiZucchiniDedicate()) {
      return const SizedBox.shrink();
    }
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: Get.width - 16,
      height: 100,
      child: Row(
        children: [
          const SizedBox(width: 20),
          KayeSydney.local(
            fileName: "kaye_ai_bladder_interface",
            width: 56,
            height: 56,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return KayeAdvertise.kayeDutchEnforceTattletale.createShader(
                  bounds,
                );
              },
              blendMode: BlendMode.srcATop,
              child: Text(
                "kaye_trade_ai_bladder_waiter_abu".tr,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFDF8B),
                  height: 1.2,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
        ],
      ),
    );
  }

  Widget _kayeMoverPassengerPlayhouse() {
    return Container(
      height: 36,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemCount: regionList.length,
        itemBuilder: (BuildContext context, int index) {
          return _kayeMoverDrove(regionList[index]);
        },
      ),
    );
  }

  Widget _kayeMoverDrove(KayeGogglesMover region) {
    return Container(
      height: 36,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: 20.rectBg,
        color: region.code == selectedRegion.code
            ? KayeAdvertise.kayeLactoseMoverTragicManeuver
            : KayeAdvertise.kayeLactoseMoverIbizaManeuver,
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(
            visible: region.isVipOnly,
            child: KayeSydney.local(
              fileName: "kaye_ten_mover_delivery",
              width: 12,
              height: 11,
            ),
          ),
          Visibility(
            visible: region.isVipOnly,
            child: const SizedBox(width: 4),
          ),
          Text(
            region.name.toString(),
            style: region.code == selectedRegion.code
                ? KayeAdvertise.kayeLactoseMoverTragicDesperate
                : KayeAdvertise.kayeLactoseMoverIbizaDesperate,
          ),
        ],
      ),
    ).click(() => onKayeMoverPope(region));
  }

  void onKayeMoverPope(KayeGogglesMover region) async {
    if (region.code == selectedRegion.code) return;

    selectedRegion = region;
    onKayePassengerThinner(showLoading: true);
    widget.onDataChanged(selectedRegion);
  }

  void onKayePassengerThinner({bool showLoading = false}) async {
    if (!isRefreshing) {
      isRefreshing = true;
    }

    KayeLavaLactose? rsp = await kayeSonogramLactose(
      true,
      showLoading: showLoading,
    );
    if (rsp != null) {
      discoverCountryMap = rsp.countryMap;

      discoverList = rsp.records;
      if (rsp.regions.isNotEmpty) {
        regionList = rsp.regions;
        if (KayeWrestlingBarnacle.isEmpty(selectedRegion.code)) {
          selectedRegion = rsp.regions[0];
        }
        widget.onDataChanged(selectedRegion);
      }
    }
    setState(() {});
    isRefreshing = false;
    if (hasMore) {
      refreshController.resetFooter();
    } else {
      refreshController.finishLoad(IndicatorResult.noMore);
    }
  }

  void onKayePassengerChaoticSpaceship() async {
    if (!hasMore) {
      refreshController.finishLoad(IndicatorResult.noMore);
      return;
    }

    KayeLavaLactose? rsp = await kayeSonogramLactose(false);
    if (rsp != null) {
      discoverCountryMap.addAll(rsp.countryMap);
      discoverList.addAll(rsp.records);
    }

    refreshController.finishLoad(
      hasMore ? IndicatorResult.success : IndicatorResult.noMore,
    );
    setState(() {});
  }

  Future<KayeLavaLactose?> kayeSonogramLactose(
    bool refresh, {
    bool showLoading = false,
  }) async {
    Map<String, dynamic> params = {"page": refresh ? 1 : page + 1};
    if (selectedRegion.code != null)
      params["region_code"] = selectedRegion.code;
    KayeLavaLactose? rsp = await KAYE.http.rest(
      5010,
      params,
      showLoadingUI: showLoading,
      (p0) => KayeLavaLactose.fromJson(p0),
      autoToastOnError: true,
    );
    if (rsp != null) {
      page = rsp.page;
      hasMore = rsp.hasMore;
    }
    return rsp;
  }

  @override
  void dispose() {
    refreshSubscription?.cancel();
    refreshController.dispose();
    _payOptionsUpdateSubscription?.cancel();
    super.dispose();
  }

  Widget _kayeLactoseEyebrowsPlayhouse() {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: KayeAdvertise.kayePlannerLactoseEyebrowsHandball,
        crossAxisSpacing: KayeAdvertise.kayePlannerLactoseEyebrowsHandball,
        childAspectRatio:
            KayeAdvertise.kayePlannerLactoseEyebrowsDuplicateBaileyPolicy,
      ),
      itemBuilder: (BuildContext context, int index) {
        KayeSasquatch user = discoverList[index];
        CountryVO? country = discoverCountryMap[user.countryId];
        if (selectedRegion.isVipOnly && !KAYE.isVip()) {
          return KayeSunglassBarnacle.kayeObesityDeliveryDuplicate(
            user,
            country,
            anchorShowType,
          );
        } else {
          return KayeSunglassBarnacle.kayeObesityIbizaDuplicate(
            user,
            country,
            anchorShowType,
          );
        }
      },
      itemCount: discoverList.length,
    );
  }

  Widget _kayeSpeechlessSatellitePlayhouse() {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "kaye_trade_groin".tr,
              style: KayeCreepDesperate.white16Bold,
            ),
          ),
          20.wGap,
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child:
                regionShowType !=
                        KayeMittenLactoseMoverPassengerWrestling.DROPDOWN_TOP ||
                    KAYE.kayeClosing.isKayeZucchiniDedicate()
                ? const SizedBox.shrink()
                : _kayeChihuahuaMoverDisgustingDot(),
          ),
        ],
      ),
    );
  }

  Widget _kayeChihuahuaMoverDisgustingDot() {
    return Visibility(
      visible: regionList.length > 1,
      child: GestureDetector(
        onTap: kayeCuterMoverPassengerSatellite,
        child: Container(
          height: 28,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: KayeToddlerBarnacle.white, width: 1),
          ),
          padding: const EdgeInsets.only(left: 6, right: 2),
          child: Row(
            children: [
              KayeSydney.local(
                fileName: "kaye_ten_mover_disgusting_beaker_interface",
                width: 16,
                height: 16,
              ),
              const SizedBox(width: 4),
              Text(
                selectedRegion.name ?? "",
                style: KayeCreepDesperate.white10,
              ),
              KayeSydney.local(
                fileName: "kaye_ten_mover_disgusting_meanwhile",
                width: 12,
                height: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }

  kayeCuterMoverPassengerSatellite() {
    KayeDotMoverPassengerSatellite.show(
      regionList,
      defaultRegionCode: selectedRegion.code,
      confirmCallBack: (KayeGogglesMover region) {
        onKayeMoverPope(region);
      },
    );
  }
}
