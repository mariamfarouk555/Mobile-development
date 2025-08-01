import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  int number = int.parse(stdin.readLineSync()!);

  print('Divisors of $number are:');
  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      print(i);
    }
  }
}