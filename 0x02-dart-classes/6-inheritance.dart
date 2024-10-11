// 6-inheritance.dart
class Password {
  String? _password;

  Password({String? password}) : _password = password;

  // Getter for password
  String? get password => _password;

  // Setter for password
  set password(String? newPassword) {
    _password = newPassword;
  }

  bool isValid() {
    if (_password == null) return false;

    // Check if the password length is between 8 and 16
    if (_password!.length < 8 || _password!.length > 16) {
      return false;
    }

    // Check if the password contains at least one uppercase letter
    bool hasUppercase = _password!.contains(RegExp(r'[A-Z]'));

    // Check if the password contains at least one lowercase letter
    bool hasLowercase = _password!.contains(RegExp(r'[a-z]'));

    // Check if the password contains at least one digit
    bool hasDigit = _password!.contains(RegExp(r'[0-9]'));

    // Return true only if all conditions are met
    return hasUppercase && hasLowercase && hasDigit;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}

class User extends Password {
  int? id;
  String? name;
  int? age;
  double? height;
  String? user_password;

  User({this.id, this.name, this.age, this.height, String? user_password})
      : super(password: user_password);

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'] ?? 0,
      name: userJson['name'] ?? '',
      age: userJson['age'] ?? 0,
      height: userJson['height'] ?? 0.0,
      user_password: userJson['user_password'] ?? '',
    );
  }

  @override
  String toString() {
    return 'User(id : ${id ?? 0} ,name: ${name ?? ''}, age: ${age ?? 0}, height: ${height ?? 0.0}, Password: ${isValid()})';
  }
}