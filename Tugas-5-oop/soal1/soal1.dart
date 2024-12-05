class LuasLingkaran {
  double setengah = 0.5;
  double alas = 20.0;
  double tinggi = 30.0;

  void hitung() {
    var luasSegitiga = setengah * alas * tinggi;
    print(luasSegitiga);
  }
}

void main() {
  var luas = LuasLingkaran();
  luas.hitung();
}
