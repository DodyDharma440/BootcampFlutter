import 'dart:math' as math;

class Lingkaran {
  late double _ruas;

  void setRuas(double ruas) {
    this._ruas = ruas < 0 ? ruas * -1 : ruas;
  }

  double getRuas() {
    return this._ruas;
  }

  double hitungLuas() {
    return math.pi * this._ruas * this._ruas;
  }
}
