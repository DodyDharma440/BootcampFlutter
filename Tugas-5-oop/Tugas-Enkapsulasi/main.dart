import 'lingkaran.dart';

void main() {
  var lingkaran1 = Lingkaran();
  lingkaran1.setRuas(-10);
  print("Ruas lingkaran 1: ${lingkaran1.getRuas()}");
  print("Luas lingkaran 1: ${lingkaran1.hitungLuas()}");

  print("");

  var lingkaran2 = Lingkaran();
  lingkaran2.setRuas(20);
  print("Ruas lingkaran 2: ${lingkaran2.getRuas()}");
  print("Luas lingkaran 2: ${lingkaran2.hitungLuas()}");
}
