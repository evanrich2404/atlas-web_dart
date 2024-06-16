int add(int a, int b) {
  int sum = a + b;
  return sum;
}

int sub(int a, int b) {
  int dif = a - b;
  return dif;
}

String showFunc(int a, int b) {
  int sum = add(a, b);
  int dif = sub(a, b);
  return ('Add $a + $b = $sum\nSub $a - $b = $dif');
}
