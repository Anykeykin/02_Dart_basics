extension realizeSearch on num {
  Object searchNSqrt(num n, num A) {
    late double xkPlusOne;
    for (int xk = 0; xk < this; xk++) {
      xkPlusOne = 1 / n * ((n - 1) * xk + A / (xk.times(n - 1)));
      if (xkPlusOne == xk) {
        return 'Корень $n степени числа $A = $xkPlusOne';
      }
    }
    if (xkPlusOne % 1 != 0) {
      throw 'Нет корня';
    }
    return 'okay';
  }

  num times(num other) {
    num sum = 0;
    num req = this;
    for (int i = 1; i < other; i++) {
      req = req * this;
      sum = req + sum;
    }
    return req;
  }
}
