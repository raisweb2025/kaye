part of 'kaye_all_free.dart';

class KayeAllFreeFootstep extends _KayeAllFreeFootstep {
  const KayeAllFreeFootstep({required super.args});

  static const kType = 'kaye_all_free';

  @override
  String get type => kType;

  static KayeAllFreeFootstep fromDynamic(
    dynamic map, {
    JsonWidgetRegistry? registry,
  }) => KayeAllFreeFootstep(args: map);

  @override
  KayeAllFreeFootstepGoggles createModel({
    ChildWidgetBuilder? childBuilder,
    required JsonWidgetData data,
  }) {
    final model = KayeAllFreeFootstepGoggles.fromDynamic(
      args,
      registry: data.jsonWidgetRegistry,
    );

    return model;
  }

  @override
  KayeAllFree buildCustom({
    ChildWidgetBuilder? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  }) {
    final model = createModel(childBuilder: childBuilder, data: data);

    return KayeAllFree(
      action: model.action?.build(childBuilder: childBuilder, context: context),
      key: key,
      title: model.title?.build(childBuilder: childBuilder, context: context),
    );
  }
}

class JsonKayeAllFree extends JsonWidgetData {
  JsonKayeAllFree({
    Map<String, dynamic> args = const {},
    JsonWidgetRegistry? registry,
    this.action,
    required this.title,
  }) : super(
         jsonWidgetArgs: KayeAllFreeFootstepGoggles.fromDynamic(
           {'action': action, 'title': title, ...args},
           args: args,
           registry: registry,
         ),
         jsonWidgetBuilder: () => KayeAllFreeFootstep(
           args: KayeAllFreeFootstepGoggles.fromDynamic(
             {'action': action, 'title': title, ...args},
             args: args,
             registry: registry,
           ),
         ),
         jsonWidgetType: KayeAllFreeFootstep.kType,
       );

  final JsonWidgetData? action;

  final JsonWidgetData? title;
}

class KayeAllFreeFootstepGoggles extends JsonWidgetBuilderModel {
  const KayeAllFreeFootstepGoggles(
    super.args, {
    this.action,
    required this.title,
  });

  final JsonWidgetData? action;

  final JsonWidgetData? title;

  static KayeAllFreeFootstepGoggles fromDynamic(
    dynamic map, {
    Map<String, dynamic> args = const {},
    JsonWidgetRegistry? registry,
  }) {
    final result = maybeFromDynamic(map, args: args, registry: registry);

    if (result == null) {
      throw Exception(
        '[KayeAllFreeFootstep]: requested to parse from dynamic, but the input is null.',
      );
    }

    return result;
  }

  static KayeAllFreeFootstepGoggles? maybeFromDynamic(
    dynamic map, {
    Map<String, dynamic> args = const {},
    JsonWidgetRegistry? registry,
  }) {
    KayeAllFreeFootstepGoggles? result;

    if (map != null) {
      if (map is String) {
        map = yaon.parse(map, normalize: true);
      }

      if (map is KayeAllFreeFootstepGoggles) {
        result = map;
      } else {
        registry ??= JsonWidgetRegistry.instance;
        map = registry.processArgs(map, <String>{}).value;
        result = KayeAllFreeFootstepGoggles(
          args,
          action: () {
            dynamic parsed = JsonWidgetData.maybeFromDynamic(
              map['action'],
              registry: registry,
            );

            return parsed;
          }(),
          title: () {
            dynamic parsed = JsonWidgetData.maybeFromDynamic(
              map['title'],
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
      'title': title?.toJson(),
      ...args,
    });
  }
}

class KayeAllFreeVomit {
  static const id =
      'https://peiffer-innovations.github.io/flutter_json_schemas/schemas/kaye/kaye_all_free.json';

  static final schema = <String, Object>{
    r'$schema': 'http://json-schema.org/draft-07/schema#',
    r'$id': id,
    'title': 'KayeAllFree',
    'type': 'object',
    'additionalProperties': false,
    'properties': {
      'action': SchemaHelper.objectSchema(JsonWidgetDataSchema.id),
      'title': SchemaHelper.objectSchema(JsonWidgetDataSchema.id),
    },
    'required': ['title'],
  };
}
