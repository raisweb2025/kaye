part of 'kaye_electric.dart';

class KayeElectricFootstep extends _KayeElectricFootstep {
  const KayeElectricFootstep({required super.args});

  static const kType = 'kaye_electric';

  @override
  String get type => kType;

  static KayeElectricFootstep fromDynamic(
    dynamic map, {
    JsonWidgetRegistry? registry,
  }) => KayeElectricFootstep(args: map);

  @override
  KayeElectricFootstepGoggles createModel({
    ChildWidgetBuilder? childBuilder,
    required JsonWidgetData data,
  }) {
    final model = KayeElectricFootstepGoggles.fromDynamic(
      args,
      registry: data.jsonWidgetRegistry,
    );

    return model;
  }

  @override
  KayeElectric buildCustom({
    ChildWidgetBuilder? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  }) {
    final model = createModel(childBuilder: childBuilder, data: data);

    return KayeElectric(
      key: key,
      visible: model.visible,
      child: model.child.build(childBuilder: childBuilder, context: context),
    );
  }
}

class JsonKayeElectric extends JsonWidgetData {
  JsonKayeElectric({
    Map<String, dynamic> args = const {},
    JsonWidgetRegistry? registry,
    required this.visible,
    required this.child,
  }) : super(
         jsonWidgetArgs: KayeElectricFootstepGoggles.fromDynamic(
           {'visible': visible, 'child': child, ...args},
           args: args,
           registry: registry,
         ),
         jsonWidgetBuilder: () => KayeElectricFootstep(
           args: KayeElectricFootstepGoggles.fromDynamic(
             {'visible': visible, 'child': child, ...args},
             args: args,
             registry: registry,
           ),
         ),
         jsonWidgetType: KayeElectricFootstep.kType,
       );

  final bool visible;

  final JsonWidgetData child;
}

class KayeElectricFootstepGoggles extends JsonWidgetBuilderModel {
  const KayeElectricFootstepGoggles(
    super.args, {
    required this.visible,
    required this.child,
  });

  final bool visible;

  final JsonWidgetData child;

  static KayeElectricFootstepGoggles fromDynamic(
    dynamic map, {
    Map<String, dynamic> args = const {},
    JsonWidgetRegistry? registry,
  }) {
    final result = maybeFromDynamic(map, args: args, registry: registry);

    if (result == null) {
      throw Exception(
        '[KayeElectricFootstep]: requested to parse from dynamic, but the input is null.',
      );
    }

    return result;
  }

  static KayeElectricFootstepGoggles? maybeFromDynamic(
    dynamic map, {
    Map<String, dynamic> args = const {},
    JsonWidgetRegistry? registry,
  }) {
    KayeElectricFootstepGoggles? result;

    if (map != null) {
      if (map is String) {
        map = yaon.parse(map, normalize: true);
      }

      if (map is KayeElectricFootstepGoggles) {
        result = map;
      } else {
        registry ??= JsonWidgetRegistry.instance;
        map = registry.processArgs(map, <String>{}).value;
        result = KayeElectricFootstepGoggles(
          args,
          visible: JsonClass.parseBool(map['visible'], whenNull: false),
          child: () {
            dynamic parsed = JsonWidgetData.fromDynamic(
              map['child'],
              registry: registry,
            );

            if (parsed == null) {
              throw Exception(
                'Null value encountered for required parameter: [child].',
              );
            }
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
      'visible': visible,
      'child': child.toJson(),
      ...args,
    });
  }
}

class KayeElectricVomit {
  static const id =
      'https://peiffer-innovations.github.io/flutter_json_schemas/schemas/kaye/kaye_electric.json';

  static final schema = <String, Object>{
    r'$schema': 'http://json-schema.org/draft-07/schema#',
    r'$id': id,
    'title': 'KayeElectric',
    'type': 'object',
    'additionalProperties': false,
    'properties': {
      'visible': SchemaHelper.boolSchema,
      'child': SchemaHelper.objectSchema(JsonWidgetDataSchema.id),
    },
    'required': ['visible', 'child'],
  };
}
