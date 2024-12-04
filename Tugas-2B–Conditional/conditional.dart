import "dart:io";

void main() {
  // SOAL 1
  print("SOAL 1");
  print("install aplikasi dart? y/t");
  String result = stdin.readLineSync()!;
  print(result.toLowerCase() == "y"
      ? "anda akan menginstall aplikasi dart"
      : result.toLowerCase() == "t"
          ? "aborted"
          : "perintah salah");
  print("");

  // SOAL 2
  print("SOAL 2");
  const roles = ["penyihir", "guard", "werewolf"];

  var nama = "";
  var peran = "";

  print("Masukkan nama");
  nama = stdin.readLineSync() ?? "";

  if (nama == "" && peran == "") {
    print("Nama harus diisi!");
  } else if (peran == "") {
    print("Halo ${nama}, Pilih peranmu untuk memulai game!");
    peran = stdin.readLineSync() ?? "";
  }

  if (peran != "") {
    if (!roles.contains(peran.toLowerCase())) {
      print("Peran yang dimasukkan tidak valid");
    } else {
      print("Selamat datang di Dunia Werewolf, ${nama}");
      if (peran.toLowerCase() == "penyihir") {
        print(
            "Halo Penyihir ${nama}, kamu dapat melihat siapa yang menjadi werewolf!");
      } else if (peran.toLowerCase() == "guard") {
        print(
            "Halo Guard ${nama}, kamu akan membantu melindungi temanmu dari serangan werewolf.");
      } else if (peran.toLowerCase() == "werewolf") {
        print("Halo Werewolf ${nama}, Kamu akan memakan mangsa setiap malam!");
      }
    }
  }
  print("");

  // SOAL 3
  print("SOAL 3");

  print("Masukkan nama hari");
  String nama_hari = stdin.readLineSync()!;
  var quote = "";

  switch (nama_hari.toLowerCase()) {
    case "senin":
      quote =
          "Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.";
      break;
    case "selasa":
      quote =
          "Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.";
      break;
    case "rabu":
      quote =
          "Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.";
      break;
    case "kamis":
      quote =
          "Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.";
      break;
    case "jumat":
      quote = "Hidup tak selamanya tentang pacar.";
      break;
    case "sabtu":
      quote = "Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.";
      break;
    case "minggu":
      quote =
          "Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.";
      break;
    default:
      quote = "Nama hari tidak valid";
  }

  print(quote);
  print("");

  // SOAL 4
  print("SOAL 4");
  var tanggal = 21;
  var bulan = 1;
  var tahun = 1945;

  var nama_bulan = "";

  switch (bulan) {
    case 1:
      nama_bulan = "Januari";
      break;
    case 2:
      nama_bulan = "Februari";
      break;
    case 3:
      nama_bulan = "Maret";
      break;
    case 4:
      nama_bulan = "April";
      break;
    case 5:
      nama_bulan = "Mei";
      break;
    case 6:
      nama_bulan = "Juni";
      break;
    case 7:
      nama_bulan = "Juli";
      break;
    case 8:
      nama_bulan = "Agustus";
      break;
    case 9:
      nama_bulan = "September";
      break;
    case 10:
      nama_bulan = "Oktober";
      break;
    case 11:
      nama_bulan = "November";
      break;
    case 12:
      nama_bulan = "Desember";
      break;
    default:
      nama_bulan = "";
  }

  print("${tanggal} ${nama_bulan} ${tahun}");
}
