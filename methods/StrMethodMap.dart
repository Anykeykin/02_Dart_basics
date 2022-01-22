class StrMethodMap {
  final map = {};

  mapHelper(strArr) {
    Map<String, int> map = Map.fromIterable(strArr,
        key: (k) => k, value: (v) => countEntrance(strArr, v));
    return 'Массив строки: $strArr, Коллекция: $map';
  }

  countEntrance(strArr, el) {
    return strArr.where((item) => item == el).length;
  }
}
