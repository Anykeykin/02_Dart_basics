class DelimetersCalculator {
  final a = 30;
  final b = 15;
  final listNod = [];

  nodNok(a, b) {
    for (int numbers = 1; numbers <= minNum(); numbers++) {
      if (a % numbers == 0 && b % numbers == 0) {
        listNod.add(numbers);
      }
    }
    final res = listNod[listNod.length - 1];
    final nok = a / res * b;
    return 'НОД: $res, НОК: $nok';
  }
}

minNum() {
  if (DelimetersCalculator().a > DelimetersCalculator().b) {
    return DelimetersCalculator().b;
  } else {
    return DelimetersCalculator().a;
  }
}
