import '6-password.dart';

class User extends Password {
  int id = 0;
  String name = '';
  int age = 0;
  double height = 0;
  String user_password = "";

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required this.user_password,
  }) : super(password: user_password);

  Map<String, dynamic> toJson() {
    final jsonMap = <String, dynamic>{};
    jsonMap['id'] = id;
    jsonMap['name'] = name;
    jsonMap['age'] = age;
    jsonMap['height'] = height;
    return jsonMap;
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    final int newId = userJson['id'] ?? 0;
    final String newName = userJson['name'] ?? "";
    final int newAge = userJson['age'] ?? 0;
    final double newHeight = userJson['height'] ?? 0.0;
    final String newPassword = userJson['user_password'] ?? "";

    return User(
      id: newId,
      name: newName,
      age: newAge,
      height: newHeight,
      user_password: newPassword,
    );
  }

  @override
  String toString() {
    return "User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})";
  }
}
