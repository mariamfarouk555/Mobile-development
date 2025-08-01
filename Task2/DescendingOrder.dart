int descendingOrder(int n) {
  List<String> digits = n.toString().split('');
  digits.sort((a, b) => b.compareTo(a));
  return int.parse(digits.join());
}

void main() {
  print(descendingOrder(42145));
  print(descendingOrder(145263));
  print(descendingOrder(123456789));
}
