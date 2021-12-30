import 'dart:math';

class binIntHelper {
  final num = 10;
  final bin = 0;
  final list = [];

  intToBin(num) {
    int numer = num;

    while (numer >= 2) {
      int reb = numer % 2;
      numer = numer ~/ 2;
      list.add(reb);

      if (numer < 2) {
        list.add(numer);
      }
    }

    final listReverseString = list.reversed.toList().join();
    return 'Десятичное число: $num в двоичное число :$listReverseString';
  }

  binToInt(bin) {
    bin = bin.toString();
    final list1 = bin.split('');
    final listInt = [];
    final listIntRaz = [];
    int res = 0;

    for (String s in list1) {
      listInt.add(int.parse(s));
    }

    for (int elem = 0; elem < listInt.length; elem++) {
      listIntRaz.add(elem);
    }
    final revListRaz = listIntRaz.reversed.toList();

    for (int elem = 0; elem < listInt.length; elem++) {
      listInt[elem] = pow(2, revListRaz[elem]) * listInt[elem];
      res = listInt[elem] + res;
    }

    return 'Двоичное число: $bin, Десятичное число: $res, Разряды массива: $revListRaz, Массив умноженный на 2 и возведенный в разряд: $listInt';
  }
}
