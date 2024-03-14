class AppValidators {

  static String? validateEmptyText(String? fieldName,String? value){
    if (value == null || value.isEmpty){
      return '$fieldName is required';
    }
    return null;
  }

  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Email is required.';
    }

    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(email)) {
      return 'Invalid email address.';
    }

    return null;
  }

  static String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Password is required.';
    }

    if (password.length < 6) {
      return 'Password most be least 6 charactor long';
    }

    if (!password.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter.';
    }

    if (!password.contains(RegExp(r'[a-z]'))) {
      return 'Password must contain at least one lower letter.';
    }

    if (!password.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number.';
    }

    if (!password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one spacial charactor.';
    }

    return null;
  }

  static String? validatePhoneNumber(String? phoneNumber) {
    if (phoneNumber == null || phoneNumber.isEmpty) {
      return 'Phone number is required.';
    }

    final phoneRegExp = RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(phoneNumber)) {
      return 'Invalid phone number format (10 digit reauired).';
    }

    return null;
  }
}
