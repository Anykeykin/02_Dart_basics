class strMethodNum {
  final str = '';
  final num = [];

  numSearch(str) {
    final strArr = str.split(' ');

    for (int elem = 0; elem < strArr.length; elem++) {
      final strElem = strArr[elem];

      bool isDigit(String s, int idx) => (s.codeUnitAt(idx) ^ 0x30) <= 9;
      if (isDigit(strElem, 0) == true) {
        num.add(strElem);
      }
    }

    return 'Строка: $str Массив чисел: $num';
  }
}
