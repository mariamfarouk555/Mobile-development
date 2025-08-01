void main() {
  print(getMiddle("test"));
  print(getMiddle("testing"));
  print(getMiddle("middle"));
  print(getMiddle("A"));
}
String getMiddle(String s) {
  int len = s.length;
  int mid = len ~/ 2;
  return len % 2 == 0 ? s.substring(mid - 1, mid + 1) : s[mid];
}
