class InputValidator {
  static String? isPasswordValid(String password) {
    if (password.length > 6) {
      return null;
    }
    return 'Password must be longer than 6 characters.';
  }

  static String? isEmailValid(String email) {
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    if (emailRegex.hasMatch(email)) {
      return null;
    }
    return 'Invalid email format.';
  }

  static String? isNameValid(String name) {
    if (name.trim().length >= 2) {
      return null;
    }
    return 'Name must be at least 2 characters long.';
  }

  static String? isLastNameValid(String lastName) {
    if (lastName.trim().length >= 2) {
      return null;
    }
    return 'Last name must be at least 2 characters long.';
  }
}
