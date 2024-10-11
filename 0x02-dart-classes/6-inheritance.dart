// 6-inheritance.dart
import '6-password.dart';

class User extends Password {
  int? id;
  String? name;
  int? age;
  double? height;
  String? _userPassword;

  User({this.id, this.name, this.age, this.height, String? user_password})
      : super(password: user_password) {
    this._userPassword = user_password;
  }

  // Getter for user_password
  String? get user_password => _userPassword;

  // Setter for user_password that updates the password in Password class
  set user_password(String? newPassword) {
    _userPassword = newPassword;
    this.password = newPassword; // Update password in the Password class
  }

  // Convert User to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id ?? 0,
      'name': name ?? '',
      'age': age ?? 0,
      'height': height ?? 0.0,
    };
  }

  // Static method to create User from JSON
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'] ?? 0,
      name: userJson['name'] ?? '',
      age: userJson['age'] ?? 0,
      height: userJson['height'] ?? 0.0,
      user_password: userJson['user_password'] ?? '',
    );
  }

  // Overriding toString to include Password validation
  @override
  String toString() {
    return 'User(id : ${id ?? 0} ,name: ${name ?? ''}, age: ${age ?? 0}, height: ${height ?? 0.0}, Password: ${isValid()})';
  }
}