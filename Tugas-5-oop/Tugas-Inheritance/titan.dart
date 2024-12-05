class Titan {
  late double _powerPoint;

  void setPowerPoint(double value) {
    this._powerPoint = value;
  }

  double getPowerPoint() {
    return this._powerPoint < 5 ? 5 : this._powerPoint;
  }
}
