class StrMethodMap {
  final strArr = [];
  final map = {};

  mapHelper(strArr) {
    for (int elem = 0; elem < strArr.length; elem++) {
      map[elem] = strArr[elem];
    }

    return 'Массив строки: $strArr, Коллекция: $map';
  }
}
