Future<void> line() async {
  await Future.delayed(Duration(seconds: 5));
  print("pernahkah kau merasa");
}

Future<void> line2() async {
  await Future.delayed(Duration(seconds: 3));
  print("pernahkah kau merasa");
}

Future<void> line3() async {
  await Future.delayed(Duration(seconds: 2));
  print("pernahkah kau merasa");
}

Future<void> line4() async {
  await Future.delayed(Duration(seconds: 1));
  print("Hatimu hampa, pernahkah kau merasa, hatimu kosong");
}

void main() async {
  print("Ready. sing");
  await line();
  await line2();
  await line3();
  await line4();
}
