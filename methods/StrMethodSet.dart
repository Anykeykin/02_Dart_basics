class StrMethodSet {
  final numStr = {
    0: 'zero',
    1: 'one',
    2: 'two',
    3: 'three',
    4: 'four',
    5: 'five',
    6: 'six',
    7: 'seven',
    8: 'eight',
    9: 'nine'
  };
  final str = '';
  Set<int> set = {};
  numSearch(str) {
    final strArr = str.split(', ');
    for (int el = 0; el < strArr.length; el++) {
      for (int elem = 0; elem < numStr.length; elem++) {
        if (strArr[el] == numStr[elem]) {
          set.add(numStr.keys.elementAt(elem));
        }
      }
    }
    return 'Строка с цифрами и словами: $strArr, результат:$set';
  }
}
