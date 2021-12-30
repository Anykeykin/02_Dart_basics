import 'methods/DelimetersCalculator.dart';
import 'methods/StrMethodSet.dart';
import 'methods/binToInt.dart';
import 'methods/StrMethodNum.dart';
import 'methods/StrMethodMap.dart';
import 'methods/DistanceToMethodPoint.dart';

void main() {
  print('1 Задание');
  print(DelimetersCalculator()
      .nodNok(DelimetersCalculator().a, DelimetersCalculator().b));
  print('');
  print('2 Задание');
  print(binIntHelper().intToBin(135));
  print(binIntHelper().binToInt(10000111));
  print('');
  print('3 Задание');
  print(strMethodNum().numSearch('hey 12 fre 4 for 65 yes 86 res'));
  print('');
  print('4 Задание');
  print(StrMethodMap().mapHelper(['Привет', 'Пока', 'Русский', 'Hello']));
  print('');
  print('5 Задание');
  print(StrMethodSet().numSearch(
      'one, two, cat, three, dog, four, three, big, seven, true, two'));
  print('');
  print('6 Задание');
  print(Point().distanceTo('connection: true'));
}
