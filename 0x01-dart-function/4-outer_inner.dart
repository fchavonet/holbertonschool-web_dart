void outer(String name, String id) {
  String inner() {
    List<String> parts = name.split(' ');
    String firstName = parts[0];
    String lastName = parts[1];

    return 'Hello Agent ${lastName[0]}.$firstName your id is $id';
  }

  print(inner());
}
