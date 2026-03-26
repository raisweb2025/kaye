import 'dart:io';

import 'package:kaye/kaye_kristen/kaye_learning/kaye_george_kristen.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_denim.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_archive/flutter_archive.dart';
import 'package:get/get.dart';
import 'package:path/path.dart' as Path;

import '../kaye_advertise.dart';
import '../kaye_mason/kaye_stroke.dart';

enum KayeGeorgeKristenPlayhouseFax { waiting, complete, failed }

class KayeGeorgeKristenPlayhouse extends StatefulWidget {
  final KayeGeorgeKristen app;

  final void Function(double width, double height)? onSize;

  const KayeGeorgeKristenPlayhouse({super.key, required this.app, this.onSize});

  @override
  State<KayeGeorgeKristenPlayhouse> createState() =>
      _KayeGeorgeKristenPlayhouseDonna();
}

class _KayeGeorgeKristenPlayhouseDonna
    extends State<KayeGeorgeKristenPlayhouse> {
  KayeGeorgeKristenPlayhouseFax _status = KayeGeorgeKristenPlayhouseFax.waiting;

  @override
  void initState() {
    super.initState();
    _prepare();
  }

  @override
  Widget build(BuildContext context) {
    if (_status == KayeGeorgeKristenPlayhouseFax.complete) {
      if (widget.app.aspectRatio != null) {
        double width = Get.width * widget.app.widthPercent;
        double height = width * widget.app.aspectRatio!;
        return SizedBox(
          width: width,
          height: height,
          child: _buildKayeConcernedPlayhouse(),
        );
      } else {
        return _buildKayeConcernedPlayhouse();
      }
    } else if (_status == KayeGeorgeKristenPlayhouseFax.waiting) {
      return const Center(child: Text("Loading..."));
    } else {
      return Center(child: Text("start fail: ${_status.name}"));
    }
  }

  KayeConcernedPlayhouse _buildKayeConcernedPlayhouse() {
    return KayeConcernedPlayhouse(
      url:
          "file://${KAYE.filePath}/${widget.app.id}/${widget.app.version}/index.html",
      miniCardMode: widget.app.aspectRatio != null,
    );
  }

  Future<void> _prepare() async {
    File appIndex = File(
      Path.join(
        KAYE.filePath,
        "${widget.app.id}/${widget.app.version}/index.html",
      ),
    );
    if (await appIndex.exists()) {
      setState(() {
        _status = KayeGeorgeKristenPlayhouseFax.complete;
      });
      return;
    }

    String zipPath = Path.join(
      KAYE.filePath,
      "${widget.app.id}/${widget.app.version}.zip",
    );
    File zipFile = File(zipPath);
    Directory appDir = Directory(Path.join(KAYE.filePath, "${widget.app.id}"));

    if (await appDir.exists()) {
      await appDir.delete(recursive: true);
    }
    Directory versionDir = Directory(
      Path.join(KAYE.filePath, "${widget.app.id}/${widget.app.version}"),
    );
    await versionDir.create(recursive: true);

    String appDownloadUrl =
        '${KayeAdvertise.kayeH5Above}/${widget.app.id}_${widget.app.version}.zip';

    bool succ = await KAYE.http.download(appDownloadUrl, zipFile.path);
    if (!succ) {
      setState(() {
        _status = KayeGeorgeKristenPlayhouseFax.failed;
      });
      return;
    }

    await ZipFile.extractToDirectory(
      zipFile: zipFile,
      destinationDir: versionDir,
      onExtracting: (zipEntry, progress) {
        return ZipFileOperation.includeItem;
      },
    );

    if (await appIndex.exists()) {
      setState(() {
        _status = KayeGeorgeKristenPlayhouseFax.complete;
      });
    } else {
      setState(() {
        _status = KayeGeorgeKristenPlayhouseFax.failed;
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
  }
}
