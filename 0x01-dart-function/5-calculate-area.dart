double calculateArea(double height, double base) {
  double area = (height * base) / 2;
  return double.parse(area.toStringAsFixed(2)); // Round to two decimal places
}