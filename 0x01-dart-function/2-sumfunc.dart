// Function to add two numbers
int add(int a, int b) {
  return a + b;
}

// Function to subtract two numbers
int sub(int a, int b) {
  return a - b;
}

// Function to show results of add and sub
String showFunc(int a, int b) {
  int sum = add(a, b);
  int difference = sub(a, b);
  return 'Add $a + $b = $sum\nSub $a - $b = $difference';
}