class Human {
  String name = "Nama Character One Piece";

  Future<void> getName() async {
    name = "Dodi";
    await Future.delayed(Duration(seconds: 3));
    print("get data[done]");
  }
}

void main() async {
  var h = Human();
  print("Luffy");
  print("Zoro");
  print("Killer");
  print(h.name);
  await h.getName();
  print(h.name);
}
