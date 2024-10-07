void main(List<String> args) {
  if (args.isNotEmpty) {
    int number = int.parse(args[0]); // Convert string argument to an integer
    if (number > 0) {
      print('$number is positive');
    } else if (number == 0) {
      print('$number is zero');
    } else {
      print('$number is negative');
    }
  }
}