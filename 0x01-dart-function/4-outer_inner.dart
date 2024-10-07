void outer(String name, String id) {
  String inner() {
    // Split the name into two words
    List<String> nameParts = name.split(' ');
    String lastNameInitial = nameParts[1][0]; // Get the first letter of the last name
    return 'Hello Agent $lastNameInitial.${nameParts[0]} your id is $id';
  }

  // Print the result of the inner function
  print(inner());
}