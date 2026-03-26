import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class KayeJerryPlannerBloodbath extends StatefulWidget {
  const KayeJerryPlannerBloodbath({
    Key? key,
    this.navigationBar,
    this.backgroundColor,
    this.resizeToAvoidBottomInset = true,
    this.mainScrollController,
    this.scrollToTopCallback,
    required this.child,
  }) : super(key: key);

  final ObstructingPreferredSizeWidget? navigationBar;

  final Widget child;

  final Color? backgroundColor;

  final ScrollController? mainScrollController;
  final VoidCallback? scrollToTopCallback;

  final bool resizeToAvoidBottomInset;

  @override
  _KayeJerryPlannerBloodbathDonna createState() =>
      _KayeJerryPlannerBloodbathDonna();
}

class _KayeJerryPlannerBloodbathDonna extends State<KayeJerryPlannerBloodbath> {
  final ScrollController _primaryScrollController = ScrollController();

  void _handleStatusBarTap() {
    if (_primaryScrollController.hasClients) {
      _primaryScrollController.animateTo(
        0.0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.linearToEaseOut,
      );
    }
    if (widget.mainScrollController != null &&
        widget.mainScrollController!.hasClients) {
      widget.mainScrollController!.animateTo(
        0.0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.linearToEaseOut,
      );
    }
    if (widget.scrollToTopCallback != null) {
      widget.scrollToTopCallback!.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget paddedContent = widget.child;

    final MediaQueryData existingMediaQuery = MediaQuery.of(context);
    if (widget.navigationBar != null) {
      final double topPadding =
          widget.navigationBar?.preferredSize.height ??
          0 + existingMediaQuery.padding.top;

      final double bottomPadding = widget.resizeToAvoidBottomInset
          ? existingMediaQuery.viewInsets.bottom
          : 0.0;

      final EdgeInsets newViewInsets = widget.resizeToAvoidBottomInset
          ? existingMediaQuery.viewInsets.copyWith(bottom: 0.0)
          : existingMediaQuery.viewInsets;

      final bool fullObstruction =
          widget.navigationBar?.shouldFullyObstruct(context) ?? false;

      if (fullObstruction) {
        paddedContent = MediaQuery(
          data: existingMediaQuery
              .removePadding(removeTop: true)
              .copyWith(viewInsets: newViewInsets),
          child: Padding(
            padding: EdgeInsets.only(top: topPadding, bottom: bottomPadding),
            child: paddedContent,
          ),
        );
      } else {
        paddedContent = MediaQuery(
          data: existingMediaQuery.copyWith(
            padding: existingMediaQuery.padding.copyWith(top: topPadding),
            viewInsets: newViewInsets,
          ),
          child: Padding(
            padding: EdgeInsets.only(bottom: bottomPadding),
            child: paddedContent,
          ),
        );
      }
    } else {
      final double bottomPadding = widget.resizeToAvoidBottomInset
          ? existingMediaQuery.viewInsets.bottom
          : 0.0;
      paddedContent = Padding(
        padding: EdgeInsets.only(bottom: bottomPadding),
        child: paddedContent,
      );
    }

    return DecoratedBox(
      decoration: BoxDecoration(
        color: widget.backgroundColor == null
            ? CupertinoTheme.of(context).scaffoldBackgroundColor
            : CupertinoDynamicColor.resolve(widget.backgroundColor!, context),
      ),
      child: Stack(
        children: <Widget>[
          PrimaryScrollController(
            controller: _primaryScrollController,
            child: paddedContent,
          ),
          if (widget.navigationBar != null)
            Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              child: MediaQuery(
                data: existingMediaQuery.copyWith(textScaleFactor: 1),
                child: widget.navigationBar!,
              ),
            ),
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            height: existingMediaQuery.padding.top,
            child: GestureDetector(
              excludeFromSemantics: true,
              onTap: _handleStatusBarTap,
            ),
          ),
        ],
      ),
    );
  }
}
