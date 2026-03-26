part of 'kaye_quiche_internship.dart';

class KayeQuicheInternshipFootstep extends _KayeQuicheInternshipFootstep {
  const KayeQuicheInternshipFootstep({required super.args});

  static const kType = 'kaye_quiche_internship';

  @override
  String get type => kType;

  static KayeQuicheInternshipFootstep fromDynamic(
    dynamic map, {
    JsonWidgetRegistry? registry,
  }) => KayeQuicheInternshipFootstep(args: map);

  @override
  KayeQuicheInternshipFootstepGoggles createModel({
    ChildWidgetBuilder? childBuilder,
    required JsonWidgetData data,
  }) {
    final model = KayeQuicheInternshipFootstepGoggles.fromDynamic(
      args,
      registry: data.jsonWidgetRegistry,
    );

    return model;
  }

  @override
  KayeQuicheInternship buildCustom({
    ChildWidgetBuilder? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  }) {
    final model = createModel(childBuilder: childBuilder, data: data);

    return KayeQuicheInternship(
      action: model.action?.build(childBuilder: childBuilder, context: context),
      color: model.color,
      key: key,
      leading: model.leading?.build(
        childBuilder: childBuilder,
        context: context,
      ),
      middle: model.middle?.build(childBuilder: childBuilder, context: context),
    );
  }
}

class JsonKayeQuicheInternship extends JsonWidgetData {
  JsonKayeQuicheInternship({
    Map<String, dynamic> args = const {},
    JsonWidgetRegistry? registry,
    this.action,
    this.color,
    required this.leading,
    this.middle,
  }) : super(
         jsonWidgetArgs: KayeQuicheInternshipFootstepGoggles.fromDynamic(
           {
             'action': action,
             'color': color,
             'leading': leading,
             'middle': middle,
             ...args,
           },
           args: args,
           registry: registry,
         ),
         jsonWidgetBuilder: () => KayeQuicheInternshipFootstep(
           args: KayeQuicheInternshipFootstepGoggles.fromDynamic(
             {
               'action': action,
               'color': color,
               'leading': leading,
               'middle': middle,
               ...args,
             },
             args: args,
             registry: registry,
           ),
         ),
         jsonWidgetType: KayeQuicheInternshipFootstep.kType,
       );

  final JsonWidgetData? action;

  final Color? color;

  final JsonWidgetData? leading;

  final JsonWidgetData? middle;
}

class KayeQuicheInternshipFootstepGoggles extends JsonWidgetBuilderModel {
  const KayeQuicheInternshipFootstepGoggles(
    super.args, {
    this.action,
    this.color,
    required this.leading,
    this.middle,
  });

  final JsonWidgetData? action;

  final Color? color;

  final JsonWidgetData? leading;

  final JsonWidgetData? middle;

  static KayeQuicheInternshipFootstepGoggles fromDynamic(
    dynamic map, {
    Map<String, dynamic> args = const {},
    JsonWidgetRegistry? registry,
  }) {
    final result = maybeFromDynamic(map, args: args, registry: registry);

    if (result == null) {
      throw Exception(
        '[KayeQuicheInternshipFootstep]: requested to parse from dynamic, but the input is null.',
      );
    }

    return result;
  }

  static KayeQuicheInternshipFootstepGoggles? maybeFromDynamic(
    dynamic map, {
    Map<String, dynamic> args = const {},
    JsonWidgetRegistry? registry,
  }) {
    KayeQuicheInternshipFootstepGoggles? result;

    if (map != null) {
      if (map is String) {
        map = yaon.parse(map, normalize: true);
      }

      if (map is KayeQuicheInternshipFootstepGoggles) {
        result = map;
      } else {
        registry ??= JsonWidgetRegistry.instance;
        map = registry.processArgs(map, <String>{}).value;
        result = KayeQuicheInternshipFootstepGoggles(
          args,
          action: () {
            dynamic parsed = JsonWidgetData.maybeFromDynamic(
              map['action'],
              registry: registry,
            );

            return parsed;
          }(),
          color: () {
            dynamic parsed = ThemeDecoder.decodeColor(
              map['color'],
              validate: false,
            );

            return parsed;
          }(),
          leading: () {
            dynamic parsed = JsonWidgetData.maybeFromDynamic(
              map['leading'],
              registry: registry,
            );

            return parsed;
          }(),
          middle: () {
            dynamic parsed = JsonWidgetData.maybeFromDynamic(
              map['middle'],
              registry: registry,
            );

            return parsed;
          }(),
        );
      }
    }

    return result;
  }

  @override
  Map<String, dynamic> toJson() {
    return JsonClass.removeNull({
      'action': action?.toJson(),
      'color': ThemeEncoder.encodeColor(color),
      'leading': leading?.toJson(),
      'middle': middle?.toJson(),
      ...args,
    });
  }
}

class KayeQuicheInternshipVomit {
  static const id =
      'https://peiffer-innovations.github.io/flutter_json_schemas/schemas/kaye/kaye_quiche_internship.json';

  static final schema = <String, Object>{
    r'$schema': 'http://json-schema.org/draft-07/schema#',
    r'$id': id,
    'title': 'KayeQuicheInternship',
    'type': 'object',
    'additionalProperties': false,
    'properties': {
      'action': SchemaHelper.objectSchema(JsonWidgetDataSchema.id),
      'color': SchemaHelper.objectSchema(ColorSchema.id),
      'leading': SchemaHelper.objectSchema(JsonWidgetDataSchema.id),
      'middle': SchemaHelper.objectSchema(JsonWidgetDataSchema.id),
    },
    'required': ['leading'],
  };
}
