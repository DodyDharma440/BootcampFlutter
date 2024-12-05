void main() {
  dataHanding(input);
}

var input = [
  ['0001', 'Roman Alamsyah', 'Bandar Lampung', '21/05/1989', 'Membaca'],
  ['0002', 'Dika Sembiring', 'Medan', '10/10/1992', 'Bermain Gitar'],
  ['0003', 'Winona', 'Ambon', '25/12/1965', 'Memasak'],
  ['0004', 'Bintang Senjaya', 'Martapura', '6/04/1970', 'Berkebun']
];

void dataHanding(List<List> input) {
  input.forEach((item) {
    print("Nomor Id : ${item[0]}");
    print("Nama Lengkap : ${item[1]}");
    print("TTL : ${item[2]}");
    print("Hobby : ${item[3]}");
    print("");
  });
}
