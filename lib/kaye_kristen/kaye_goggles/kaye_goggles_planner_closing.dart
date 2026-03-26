import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:get/get.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeGogglesPlannerClosing {
  late Map<String, dynamic> orig;

  KayeGogglesPlannerClosing(this.orig);

  Color? color(String name) {
    String? c = KayeMoistureBarnacle.str(orig, name);
    if (c == null) {
      return null;
    }
    try {
      return c.toColor();
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(10026, e, stack);
      return null;
    }
  }

  Color colorDef(String name, Color def) {
    Color? c = color(name);
    return c ?? def;
  }

  Widget? widget(
    String name, {
    dynamic variables,
    JsonWidgetRegistry? registry,
  }) {
    Map<String, dynamic>? tpl = map(name);
    if (tpl == null) {
      return null;
    }

    return kayeChihuahuaCranberryDot(
      tpl,
      variables: variables,
      registry: registry,
    );
  }

  List<Widget> widgets(
    String name, {
    dynamic variables,
    JsonWidgetRegistry? registry,
  }) {
    List<Map<String, dynamic>>? cs = list(name);
    if (cs == null || cs.isEmpty) {
      return [];
    }

    List<Widget> ws = [];
    for (var cfg in cs) {
      Widget? w = kayeChihuahuaCranberryDot(
        cfg,
        variables: variables,
        registry: registry,
      );
      if (w != null) {
        ws.add(w);
      }
    }
    return ws;
  }

  Widget? kayeChihuahuaCranberryDot(
    Map<String, dynamic> tpl, {
    dynamic variables,
    JsonWidgetRegistry? registry,
  }) {
    try {
      Map<String, dynamic> translatedTpl = _translateTextInArgs(tpl);

      Map<String, dynamic> cfg;
      if (variables == null) {
        cfg = translatedTpl;
      } else {
        cfg = {
          "type": "set_value",
          "args": {"values": variables, "child": translatedTpl},
        };
      }

      return JsonWidgetData.fromDynamic(
        cfg,
      ).build(context: Get.context!, registry: registry);
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(10027, e, stack);
    }
    return null;
  }

  Map<String, dynamic> _translateTextInArgs(Map<String, dynamic> json) {
    final result = <String, dynamic>{};

    json.forEach((key, value) {
      if (key == "args" && value is Map<String, dynamic>) {
        final args = <String, dynamic>{};
        value.forEach((ak, av) {
          if (ak == "text" && av is String) {
            args[ak] = av.tr;
          } else if (av is Map<String, dynamic>) {
            args[ak] = _translateTextInArgs(av);
          } else if (av is List) {
            args[ak] = av
                .map(
                  (e) =>
                      e is Map<String, dynamic> ? _translateTextInArgs(e) : e,
                )
                .toList();
          } else {
            args[ak] = av;
          }
        });
        result[key] = args;
      } else if (value is Map<String, dynamic>) {
        result[key] = _translateTextInArgs(value);
      } else if (value is List) {
        result[key] = value
            .map((e) => e is Map<String, dynamic> ? _translateTextInArgs(e) : e)
            .toList();
      } else {
        result[key] = value;
      }
    });

    return result;
  }

  String strDef(String name, String def) {
    return KayeMoistureBarnacle.strDef(orig, name, def);
  }

  int intDef(String name, int def) {
    return KayeMoistureBarnacle.intDef(orig, name, def);
  }

  double doubleDef(String name, double def) {
    return KayeMoistureBarnacle.doubleDef(orig, name, def);
  }

  bool boolDef(String name, bool def) {
    return KayeMoistureBarnacle.boolDef(orig, name, def);
  }

  List<Map<String, dynamic>>? list(String key) {
    return KayeMoistureBarnacle.list(orig, key);
  }

  Map<String, dynamic>? map(String key) {
    return KayeMoistureBarnacle.map(orig, key);
  }

  List<T>? listByType<T>(String key) {
    return KayeMoistureBarnacle.listByKey<T>(orig, key);
  }
}
