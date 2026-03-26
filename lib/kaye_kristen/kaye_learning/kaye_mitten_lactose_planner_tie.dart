import '../kaye_cat_lava/kaye_lava_lactose.dart';
import '../kaye_goggles/kaye_goggles_mover.dart';
import '../kaye_goggles/kaye_sasquatch.dart';

class KayeLactosePlannerTie {
  List<KayeGogglesMover> regions = [];

  int page = 1;

  bool hasMore = false;

  List<KayeSasquatch> records = [];

  Map<int, CountryVO> countryMap = {};

  bool refreshing = false;
}
