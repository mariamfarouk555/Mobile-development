void main() {
  print(squareSum([1, 2, 2]));    
  print(squareSum([0, 3, 4, 5]));        
}
int squareSum(List<int> numbers) {
  return numbers.map((n) => n * n).fold(0, (a, b) => a + b);
}
