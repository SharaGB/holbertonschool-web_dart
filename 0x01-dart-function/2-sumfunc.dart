int add(int a, int b) => a + b;

int sub(int a, int b) => a - b;

String showFunc(int a, int b) {
  return 'Add ${a} + ${b} = ${add(a, b)}\nSub ${a} - ${b} = ${sub(a, b)}';
}
