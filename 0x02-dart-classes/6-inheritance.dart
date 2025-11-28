import '6-password.dart';

class User extends Password {
  int id = 0;
  String name = '';
  int age = 0;
  double height = 0;
  String _userPassword = "";

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required String user_password,
  }) : super(password: user_password) {
    _userPassword = user_password;
  }

  // Getter
  String get user_password {
    return _userPassword;
  }

  // Setter synchronisé avec Password(password)
  set user_password(String newPassword) {
    _userPassword = newPassword;
    password = newPassword; // met à jour le Password du parent
  }

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
