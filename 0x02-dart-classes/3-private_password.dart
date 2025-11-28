class Password {
  String _password = "";

  Password({required String password}) {
    _password = password;
  }

  bool isValid() {
    if (_password.length < 8) {
      return false;
    }
    if (_password.length > 16) {
      return false;
    }

    bool hasUpper = false;
    bool hasLower = false;
    bool hasDigit = false;

    for (int i = 0; i < _password.length; i++) {
      final char = _password[i];

      if (char.toUpperCase() == char && char.toLowerCase() != char) {
        hasUpper = true;
      }

      if (char.toLowerCase() == char && char.toUpperCase() != char) {
        hasLower = true;
      }

      if (int.tryParse(char) != null) {
        hasDigit = true;
      }
    }

    if (hasUpper == false) {
      return false;
    }
    if (hasLower == false) {
      return false;
    }
    if (hasDigit == false) {
      return false;
    }

    return true;
  }

  @override
  String toString() {
    return "Your Password is: $_password";
  }
}
