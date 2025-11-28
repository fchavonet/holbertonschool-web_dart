class User {
  int id = 0;
  String name = '';
  int age = 0;
  double height = 0;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
  });

  Map<String, dynamic> toJson() {
    final jsonMap = <String, dynamic>{};
    jsonMap['id'] = id;
    jsonMap['name'] = name;
    jsonMap['age'] = age;
    jsonMap['height'] = height;
    return jsonMap;
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    final int newId = userJson['id'];
    final String newName = userJson['name'];
    final int newAge = userJson['age'];
    final double newHeight = userJson['height'];

    return User(id: newId, name: newName, age: newAge, height: newHeight);
  }

  @override
  String toString() {
    return "User(id : $id ,name: $name,  age: $age, height: $height)";
  }
}
