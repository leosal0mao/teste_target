import 'dart:io';

void main() {
  stdout.write('Digite um número inteiro: ');
  int number = int.parse(stdin.readLineSync()!);

  if (isFibonacciNumber(number)) {
    print('$number está na sequência de Fibonacci');
  } else {
    print('$number não está na sequência de Fibonacci');
  }
}

bool isFibonacciNumber(int n) {
  if (n == 0 || n == 1) {
    return true;
  }

  int first = 0;
  int second = 1;
  int fibonacci = first + second;

  while (fibonacci <= n) {
    if (fibonacci == n) {
      return true;
    }
    first = second;
    second = fibonacci;
    fibonacci = first + second;
  }

  return false;
}
