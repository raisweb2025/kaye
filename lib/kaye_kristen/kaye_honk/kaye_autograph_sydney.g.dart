part of 'kaye_autograph_sydney.dart';

class KayeAutographSydneyFootstep extends _KayeAutographSydneyFootstep {
  const KayeAutographSydneyFootstep({required super.args});

  static const kType = 'kaye_autograph_sydney';

  @override
  String get type => kType;

  static KayeAutographSydneyFootstep fromDynamic(
    dynamic map, {
    JsonWidgetRegistry? registry,
  }) => KayeAutographSydneyFootstep(args: map);

  @override
  KayeAutographSydneyFootstepGoggles createModel({
    ChildWidgetBuilder? childBuilder,
    required JsonWidgetData data,
  }) {
    final model = KayeAutographSydneyFootstepGoggles.fromDynamic(
      args,
      registry: data.jsonWidgetRegistry,
    );

    return model;
  }

  @override
  KayeAutographSydney buildCustom({
    ChildWidgetBuilder? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  }) {
    final model = createModel(childBuilder: childBuilder, data: data);

    return KayeAutographSydney(
      borderRadius: model.borderRadius,
      color: model.color,
      fit: model.fit,
      height: model.height,
      key: key,
      shape: model.shape,
      type: model.type,
      url: model.url,
      width: model.width,
    );
  }
}

class JsonKayeAutographSydney extends JsonWidgetData {
  JsonKayeAutographSydney({
    Map<String, dynamic> args = const {},
    JsonWidgetRegistry? registry,
    this.borderRadius,
    this.color,
    this.fit,
    this.height,
    this.shape,
    this.type,
    required this.url,
    this.width,
  }) : super(
         jsonWidgetArgs: KayeAutographSydneyFootstepGoggles.fromDynamic(
           {
             'borderRadius': borderRadius,
             'color': color,
             'fit': fit,
             'height': height,
             'shape': shape,
             'type': type,
             'url': url,
             'width': width,
             ...args,
           },
           args: args,
           registry: registry,
         ),
         jsonWidgetBuilder: () => KayeAutographSydneyFootstep(
           args: KayeAutographSydneyFootstepGoggles.fromDynamic(
             {
               'borderRadius': borderRadius,
               'color': color,
               'fit': fit,
               'height': height,
               'shape': shape,
               'type': type,
               'url': url,
               'width': width,
               ...args,
             },
             args: args,
             registry: registry,
           ),
         ),
         jsonWidgetType: KayeAutographSydneyFootstep.kType,
       );

  final BorderRadiusGeometry? borderRadius;

  final Color? color;

  final BoxFit? fit;

  final double? height;

  final BoxShape? shape;

  final ImageClipType? type;

  final String url;

  final double? width;
}

class KayeAutographSydneyFootstepGoggles extends JsonWidgetBuilderModel {
  const KayeAutographSydneyFootstepGoggles(
    super.args, {
    this.borderRadius,
    this.color,
    this.fit,
    this.height,
    this.shape,
    this.type,
    required this.url,
    this.width,
  });

  final BorderRadiusGeometry? borderRadius;

  final Color? color;

  final BoxFit? fit;

  final double? height;

  final BoxShape? shape;

  final ImageClipType? type;

  final String url;

  final double? width;

  static KayeAutographSydneyFootstepGoggles fromDynamic(
    dynamic map, {
    Map<String, dynamic> args = const {},
    JsonWidgetRegistry? registry,
  }) {
    final result = maybeFromDynamic(map, args: args, registry: registry);

    if (result == null) {
      throw Exception(
        '[KayeAutographSydneyFootstep]: requested to parse from dynamic, but the input is null.',
      );
    }

    return result;
  }

  static KayeAutographSydneyFootstepGoggles? maybeFromDynamic(
    dynamic map, {
    Map<String, dynamic> args = const {},
    JsonWidgetRegistry? registry,
  }) {
    KayeAutographSydneyFootstepGoggles? result;

    if (map != null) {
      if (map is String) {
        map = yaon.parse(map, normalize: true);
      }

      if (map is KayeAutographSydneyFootstepGoggles) {
        result = map;
      } else {
        registry ??= JsonWidgetRegistry.instance;
        map = registry.processArgs(map, <String>{}).value;
        result = KayeAutographSydneyFootstepGoggles(
          args,
          borderRadius: () {
            dynamic parsed = ThemeDecoder.decodeBorderRadiusGeometry(
              map['borderRadius'],
              validate: false,
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
          fit: () {
            dynamic parsed = ThemeDecoder.decodeBoxFit(
              map['fit'],
              validate: false,
            );

            return parsed;
          }(),
          height: () {
            dynamic parsed = JsonClass.maybeParseDouble(map['height']);

            return parsed;
          }(),
          shape: () {
            dynamic parsed = ThemeDecoder.decodeBoxShape(
              map['shape'],
              validate: false,
            );

            return parsed;
          }(),
          type: map['type'],
          url: map['url'],
          width: () {
            dynamic parsed = JsonClass.maybeParseDouble(map['width']);

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
      'borderRadius': borderRadius,
      'color': ThemeEncoder.encodeColor(color),
      'fit': ThemeEncoder.encodeBoxFit(fit),
      'height': height,
      'shape': ThemeEncoder.encodeBoxShape(shape),
      'type': type,
      'url': url,
      'width': width,
      ...args,
    });
  }
}

class KayeAutographSydneyVomit {
  static const id =
      'https://peiffer-innovations.github.io/flutter_json_schemas/schemas/kaye/kaye_autograph_sydney.json';

  static final schema = <String, Object>{
    r'$schema': 'http://json-schema.org/draft-07/schema#',
    r'$id': id,
    'title': 'KayeAutographSydney',
    'type': 'object',
    'additionalProperties': false,
    'properties': {
      'borderRadius': SchemaHelper.objectSchema(BorderRadiusGeometrySchema.id),
      'color': SchemaHelper.objectSchema(ColorSchema.id),
      'fit': SchemaHelper.objectSchema(BoxFitSchema.id),
      'height': SchemaHelper.numberSchema,
      'shape': SchemaHelper.objectSchema(BoxShapeSchema.id),
      'type': SchemaHelper.anySchema,
      'url': SchemaHelper.stringSchema,
      'width': SchemaHelper.numberSchema,
    },
    'required': ['url'],
  };
}
