import 'dart:io';

void main() {
  // SOAL 1
  print("SOAL 1");
  var word = 'dart';
  var second = 'is';
  var third = 'awesome';
  var fourth = 'and';
  var fifth = 'I';
  var sixth = 'love';
  var seventh = 'it!';

  var kalimat =
      "${word[0].toUpperCase()}${word.substring(1)} ${second} ${third} ${fourth} ${fifth} ${sixth} ${seventh}";
  print(kalimat);
  print("");

  // SOAL 2
  print("SOAL 2");
  var sentence = "I am going to be Flutter Developer";

  var exampleFirstWord = sentence[0];
  var exampleSecondWord = sentence[2] + sentence[3];
  var thirdWord =
      sentence[5] + sentence[6] + sentence[7] + sentence[8] + sentence[9];
  var fourthWord = sentence[11] + sentence[12];
  var fifthWord = sentence[14] + sentence[15];
  var sixthWord = sentence[17] +
      sentence[18] +
      sentence[19] +
      sentence[20] +
      sentence[21] +
      sentence[22] +
      sentence[23];
  var seventhWord = sentence[25] +
      sentence[26] +
      sentence[27] +
      sentence[28] +
      sentence[29] +
      sentence[30] +
      sentence[31] +
      sentence[32] +
      sentence[33];

  print('First Word: ' + exampleFirstWord);
  print('Second Word: ' + exampleSecondWord);
  print('Third Word: ' + thirdWord);
  print('Fourth Word: ' + fourthWord);
  print('Fifth Word: ' + fifthWord);
  print('Sixth Word: ' + sixthWord);
  print('Seventh Word: ' + seventhWord);
  print("");

  // SOAL 3
  print("SOAL 3");
  print("masukkan nama depan");
  String firstName = stdin.readLineSync()!;

  print("masukkan nama belakang");
  String lastName = stdin.readLineSync()!;

  print("");

  print("nama lengkap anda adalah:");
  print("${firstName} ${lastName}");
  print("");

  // SOAL 4
  print("SOAL 4");
  var a = 5;
  var b = 10;
  print(
    "perkalian: ${a * b}",
  );
  print(
    "pembagian: ${a / b}",
  );
  print(
    "penambahan: ${a + b}",
  );
  print(
    "pengurangan: ${a - b}",
  );
}
