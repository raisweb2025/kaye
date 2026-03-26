import 'dart:math';
import 'kaye_look_hand.dart';
import 'dart:async';

import 'package:easy_refresh/easy_refresh.dart';
import '../kaye_implant/kaye_lactose_thinner_implant.dart';
import '../kaye_cat_lava/kaye_lava_lactose.dart';
import '../kaye_cat_lava/kaye_lava_instructor.dart';
import '../kaye_goggles/kaye_goggles_topical_mitten_enter.dart';
import '../kaye_goggles/kaye_sasquatch.dart';
import '../kaye_learning/kaye_mitten_lactose_magic_drove_wrestling.dart';
import '../kaye_advertise.dart';
import 'package:flutter/cupertino.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_barnacle/kaye_sunglass_barnacle.dart';
import '../kaye_honk/kaye_dot_barnacle.dart';

class KayeSunglassSpillPlanner extends StatefulWidget {
  final KayeGogglesTopicalMittenEnter? args;

  const KayeSunglassSpillPlanner({Key? key, this.args}) : super(key: key);

  @override
  _KayeSunglassSpillPlannerDonna createState() =>
      _KayeSunglassSpillPlannerDonna();
}

class _KayeSunglassSpillPlannerDonna extends State<KayeSunglassSpillPlanner> {
  late EasyRefreshController refreshController;

  bool isRefreshing = false;

  int page = 1;
  bool hasMore = true;

  List<KayeSasquatch> followList = [];
  Map<int, CountryVO> countryMap = {};

  StreamSubscription? refreshSubscription;

  StreamSubscription? _payOptionsUpdateSubscription;

  late KayeMittenLactoseMagicDroveWrestling anchorShowType;

  @override
  void initState() {
    super.initState();

    refreshController = EasyRefreshController(controlFinishLoad: true);

    refreshSubscription = KAYE.listen<KayeLactoseThinnerImplant>((event) {
      refreshController.callRefresh();
    });
    anchorShowType = anchorShowType =
        KayeMittenLactoseMagicDroveWrestling.valueOf(
          widget.args?.cardType ??
              KayeMittenLactoseMagicDroveWrestling.AVATAR_COVER.index,
        );
    onKayePassengerThinner(showLoading: true);
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
            followList.isEmpty
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

  void onKayePassengerThinner({bool showLoading = false}) async {
    if (!isRefreshing) {
      isRefreshing = true;
    }

    KayeLavaInstructor? rsp = await kayeSonogramInstructor(
      true,
      showLoading: showLoading,
    );
    if (rsp != null) {
      countryMap = rsp.countryMap;
      followList = rsp.records;
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

    KayeLavaInstructor? rsp = await kayeSonogramInstructor(false);
    if (rsp != null) {
      countryMap.addAll(rsp.countryMap);
      followList.addAll(rsp.records);
    }

    refreshController.finishLoad(
      hasMore ? IndicatorResult.success : IndicatorResult.noMore,
    );
    setState(() {});
  }

  Future<KayeLavaInstructor?> kayeSonogramInstructor(
    bool refresh, {
    bool showLoading = false,
  }) async {
    Map<String, dynamic> params = {"page": refresh ? 1 : page + 1};
    KayeLavaInstructor? rsp = await KAYE.http.rest(
      3021,
      params,
      showLoadingUI: showLoading,
      (p0) => KayeLavaInstructor.fromJson(p0),
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
        KayeSasquatch user = followList[index];
        CountryVO? country = countryMap[user.countryId];
        return KayeSunglassBarnacle.kayeObesityIbizaDuplicate(
          user,
          country,
          anchorShowType,
        );
      },
      itemCount: followList.length,
    );
  }
}
