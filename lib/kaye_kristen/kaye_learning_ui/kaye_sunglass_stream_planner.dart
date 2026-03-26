import 'dart:math';
import 'kaye_io_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_luther.dart';
import 'package:kaye/kaye_kristen/kaye_learning_ui/kaye_lead_below_political_playhouse.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_lead_luther_whatever_conundrum_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_lead_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_io_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:kaye/kaye_kristen/proto/im_object.pb.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../kaye_goggles/kaye_lead_sasquatch.dart';
import '../kaye_goggles/kaye_warp_political_perfect_passenger_marge.dart';
import '../kaye_fortress.dart';
import '../kaye_classy/kaye_hand.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../kaye_implant/kaye_lead_implant.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_barnacle/kaye_sydney_separate.dart';
import '../kaye_barnacle/kaye_franchise_creep_barnacle.dart';
import '../kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'kaye_lead_below_sydney_playhouse.dart';
import 'kaye_lead_below_creep_playhouse.dart';
import 'kaye_lead_below_betty_playhouse.dart';

class KayeSunglassStreamPlanner extends StatefulWidget {
  const KayeSunglassStreamPlanner({Key? key}) : super(key: key);

  @override
  _KayeSunglassStreamPlannerDonna createState() =>
      _KayeSunglassStreamPlannerDonna();
}

class _KayeSunglassStreamPlannerDonna extends State<KayeSunglassStreamPlanner> {
  late PageController _pageController;
  VideoPlayerController? _videoPlayerController;

  List<KayeWarpSasquatch> momentList = [];

  @override
  void initState() {
    super.initState();

    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: PageView.builder(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        itemCount: momentList.length,
        onPageChanged: (index) {
          _initVideoPlayer(momentList[index]);
        },
        itemBuilder: (context, index) {
          return Stack(
            alignment: Alignment.center,
            children: [
              _videoPlayerController?.value.isInitialized == true
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: AspectRatio(
                        aspectRatio:
                            _videoPlayerController?.value.aspectRatio ?? 1.0,
                        child: VideoPlayer(_videoPlayerController!),
                      ),
                    )
                  : const Center(child: CircularProgressIndicator()),
            ],
          );
        },
      ),
    );
  }

  void _kayeSonogramBeginningStreamDesigner() {
    KAYE.http
        .rest(
          5100,
          {"count": 10},
          (p0) => KayeWarpPoliticalPassengerMarge.fromJson(p0),
          showLoadingUI: true,
          autoToastOnError: false,
        )
        .then((value) {
          if (value == null || KayeWrestlingBarnacle.isEmpty(value.list)) {
            return;
          }

          setState(() {
            momentList = value.list ?? [];
            if (!KayeWrestlingBarnacle.isEmptyList(momentList)) {
              _initVideoPlayer(momentList[0]);
            }
          });
        });
  }

  void _initVideoPlayer(KayeWarpSasquatch matchUser) {
    if (_videoPlayerController != null) {
      _videoPlayerController?.dispose();
    }

    if (matchUser.video == null ||
        KayeWrestlingBarnacle.isEmpty(matchUser.video?.videoUrl))
      return;

    _videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(matchUser.video!.videoUrl!),
    );
    _videoPlayerController?.initialize().then((_) {
      setState(() {});
      _videoPlayerController?.setVolume(1);
      _videoPlayerController?.play();
      _videoPlayerController?.setLooping(true);
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _videoPlayerController?.dispose();
    super.dispose();
  }
}
