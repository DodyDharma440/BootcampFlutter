void main() {
  print("Life");
  Future.delayed(Duration(seconds: 0), () => print("never flat"));
  print("is");
}
