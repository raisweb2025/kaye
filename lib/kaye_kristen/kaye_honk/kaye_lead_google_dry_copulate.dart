import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sydney_separate.dart';
import '../kaye_classy/kaye_hand.dart';
import 'package:flutter/cupertino.dart';

class ChatInputFuncItem {
  final ChatInputFuncType type;
  final String name;
  final String icon;

  ChatInputFuncItem(this.type, this.name, this.icon);
}

enum ChatInputFuncType { voice, video, card, location }

class KayeLeadGoogleDryCopulate extends StatelessWidget {
  static final List<ChatInputFuncItem> _configItems = [];

  final ValueChanged<ChatInputFuncType>? selectFunc;

  const KayeLeadGoogleDryCopulate({Key? key, this.selectFunc})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceData = MediaQuery.of(context);
    final itemWidth = (deviceData.size.width - 15.0 * 2 - 10.0 * 3) / 4;
    const itemHeight = 10.0 * 2 + 7.0 * 2 + 36.0 + 8.0 + 20.0;
    return GridView.builder(
      padding: EdgeInsets.fromLTRB(
        15.0,
        15.0,
        15.0,
        deviceData.viewPadding.bottom > 0
            ? deviceData.viewPadding.bottom
            : 15.0,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: itemWidth / itemHeight,
      ),
      itemCount: _configItems.length,
      itemBuilder: (context, index) => _gridItem(_configItems[index]),
    );
  }

  Widget _gridItem(ChatInputFuncItem item) {
    return CupertinoButton(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: Image(
              image: KayeSydneySeparate.kayeChaoticWhoreSydney(item.icon),
              width: 36.0,
              height: 36.0,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(item.name, style: KayeCreepDesperate.TextB3_12),
        ],
      ),
      onPressed: () => selectFunc?.call(item.type),
    );
  }
}
