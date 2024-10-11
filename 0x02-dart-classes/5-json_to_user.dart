// 5-json_to_user.dart
class User {
  int id;
  String name;
  int age;
  double height;

  User({required this.id, required this.name, required this.age, required this.height});

  // Method to convert User to a JSON (Map) representation
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  // Static method to create a User from a JSON (Map) representation
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
    );
  }

  // Overriding toString method to return a string representation of User
  @override
  String toString() {
    return 'User(id : $id ,name: $name,  age: $age, height: $height)';
  }
}