import 'dart:math';

class Point {
  late double ax;
  double ay;
  double az;
  final bx = 5;
  final by = 7;
  final bz = 1;

  Point.search(this.ax, this.ay, this.az) {
    this.ax = ax;
    this.ay = ay;
    this.az = az;
  }

  factory Point.first(ax, ay, az) {
    final str = 'hello';
    return Point.search(ax, ay, az);
  }
  distanceTo() {
    final sum = sqrt(pow(bx - ax, 2) + pow(by - ay, 2) + pow(bz - az, 2));
    return sum;
  }
}
