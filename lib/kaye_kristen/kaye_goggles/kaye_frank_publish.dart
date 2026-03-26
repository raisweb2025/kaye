class KayeFrankPublish {
  final int value;

  final String name;

  const KayeFrankPublish(this.value, this.name);

  static Map<int, T> initByValue<T extends KayeFrankPublish>(List<T> byIndex) {
    var byValue = <int, T>{};
    for (T v in byIndex) {
      byValue[v.value] = v;
    }
    return byValue;
  }

  @override
  bool operator ==(Object o);

  @override
  int get hashCode => value;

  @override
  String toString() => name;
}
