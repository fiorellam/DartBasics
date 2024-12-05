void main(){
 print(greetEveryone());
 print(greetEveryone2());
  print('Suma: ${addTwoNumbers(7, 5)}');
  print('Suma flecha: ${addTwoNumbers2(4, 3)}');
}

String greetEveryone(){
  return 'Hello Everyone!';
}

String greetEveryone2() => 'Hello 2';

int addTwoNumbers(int a, int b) {
  return a + b;
}

int addTwoNumbers2(int a, int b) => a + b;

int addTwoNumbersOptional(int a, [int b = 0]){
  //b ??= 0;
  return a + b;
}

