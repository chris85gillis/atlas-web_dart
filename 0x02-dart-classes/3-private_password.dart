// 3-private_password.dart
class Password {
  String _password;

  Password({required String password}) : _password = password;

  bool isValid() {
    // Check if the password length is between 8 and 16
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    // Check if the password contains at least one uppercase letter
    bool hasUppercase = _password.contains(RegExp(r'[A-Z]'));
    
    // Check if the password contains at least one lowercase letter
    bool hasLowercase = _password.contains(RegExp(r'[a-z]'));
    
    // Check if the password contains at least one digit
    bool hasDigit = _password.contains(RegExp(r'[0-9]'));

    // Return true only if all conditions are met
    return hasUppercase && hasLowercase && hasDigit;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}