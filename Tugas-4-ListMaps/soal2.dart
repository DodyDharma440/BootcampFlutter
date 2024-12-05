void main() {
  print(rangeWithStep(30, 23, 3));
  print(rangeWithStep(23, 30, 3));
}

List<int> rangeWithStep(int num1, int num2, int step) {
  List<int> list = [];

  if (num1 > num2) {
    for (var i = num1; i >= num2; i -= step) {
      list.add(i);
    }
  } else {
    for (var i = num1; i <= num2; i += step) {
      list.add(i);
    }
  }

  return list;
}
