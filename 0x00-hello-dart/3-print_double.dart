import 'dart:io';

void main() {
  print('Enter a number:');
  var input = stdin.readLineSync();  // Read user input from the console
  if (input != null) {
    var number = double.parse(input);  // Parse the input as a double
    print('Double: ${number.toStringAsFixed(2)}');
  }
}