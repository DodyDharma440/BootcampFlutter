void main() {
  print(range(10, 1));
  print(range(1, 10));
}

List<int> range(int num1, int num2) {
  List<int> list = [];

  if (num1 > num2) {
    for (var i = num1; i >= num2; i--) {
      list.add(i);
    }
  } else {
    for (var i = num1; i <= num2; i++) {
      list.add(i);
    }
  }

  return list;
}
