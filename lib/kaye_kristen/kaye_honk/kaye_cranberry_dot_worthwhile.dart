import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:json_dynamic_widget/builders.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

import '../kaye_mason/kaye_stroke.dart';

class KayeCranberryDotWorthwhile extends StatelessWidget {
  final GlobalKey<JsonWidgetExporterData> _exportKey =
      GlobalKey<JsonWidgetExporterData>();

  late JsonWidgetData child;

  KayeCranberryDotWorthwhile({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        JsonWidgetExporter(
          key: _exportKey,
          child: JsonExportable(child: child),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: CircleAvatar(
            backgroundColor: Colors.deepOrange,
            radius: 15,
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(
                Icons.javascript_sharp,
                color: Colors.white,
                size: 30,
              ),
              color: Colors.white,
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
