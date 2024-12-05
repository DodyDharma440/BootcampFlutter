void main() {
  // SOAL 1
  print("SOAL 1");
  int nomor = 2;
  int i = 1;
  while (i < 20) {
    if (nomor == 2 && i < 10) {
      print("LOOPING PERTAMA");
    }
    print("${nomor} - I love coding");

    if (nomor == 20) {
      print("LOOPING KEDUA");
      print("${nomor} - I love coding");
    }

    if (i > 10 || nomor == 20) {
      nomor -= 2;
    } else {
      nomor += 2;
    }

    i++;
  }
  print("");

  // SOAL 2
  print("SOAL 2");
  for (var i = 1; i <= 20; i++) {
    var word = "Santai";
    if (i % 3 == 0 && i % 2 != 0) {
      word = "I Love Coding";
    } else if (i % 2 == 0) {
      word = "Berkualitas";
    }

    print("${i} - ${word}");
  }

  print("");

  // SOAL 3
  print("SOAL 3");
  for (var i = 0; i < 4; i++) {
    var el = "";
    for (var j = 0; j < 8; j++) {
      el += "#";
    }
    print(el);
  }
  print("");

  // SOAL 4
  print("SOAL 4");
  for (var i = 0; i < 7; i++) {
    var el = "";
    for (var j = 0; j < i + 1; j++) {
      el += "#";
    }
    print(el);
  }
  print("");
}
