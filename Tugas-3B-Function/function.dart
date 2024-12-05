void main() {
  // SOAL 1
  print("SOAL 1");
  void teriak() {
    print("Halo Sanbers!");
  }

  teriak();
  print("");

  // SOAL 2
  print("SOAL 2");
  int kalikan(int num1, int num2) {
    return num1 * num2;
  }

  var num1 = 12;
  var num2 = 4;

  var hasilKali = kalikan(num1, num2);
  print(hasilKali);
  print("");

  // SOAL 3
  print("SOAL 3");
  String introduce(String name, int age, String address, String hobby) {
    return "Nama saya ${name}, umur saya ${age} tahun, alamat saya di ${address}, dan saya punya hobby yaitu ${hobby}!";
  }

  var name = "Agus";
  var age = 30;
  var address = "Jln. Malioboro, Yogyakarta";
  var hobby = "Gaming";

  var perkenalan = introduce(name, age, address, hobby);
  print(perkenalan);

  print("");
}
