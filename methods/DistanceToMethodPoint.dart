import 'dart:math';

class Point {
  double ax;
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

  factory Point.begin(ax, ay, az) {
    return Point.search(0, 0, 0);
  }

  distanceTo() {
    final sum = sqrt(pow(bx - ax, 2) + pow(by - ay, 2) + pow(bz - az, 2));
    return sum;
  }
}
