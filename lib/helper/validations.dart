String? validateFullName(String? value) {
  final RegExp nameRegExp = RegExp(r'^[A-Za-z ]+$');

  if (value == null || value.isEmpty) {
    return 'Full name is required';
  } else if (!nameRegExp.hasMatch(value)) {
    return 'Invalid full name';
  }

  return null;
}
String? validatePhoneNumber(String? value) {
  final RegExp phoneRegExp = RegExp(r'^[0-9]{11}$');

  if (value == null || value.isEmpty) {
    return 'Phone number is required';
  } else if (!phoneRegExp.hasMatch(value)) {
    return 'Invalid phone number';
  }

  return null;
}

String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Email is required';
  } else if (!isEmailValid(value)) {
    return 'Invalid email';
  }
  return null;
}

String? validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return 'Password is required';
  } else if (value.length < 6) {
    return 'Password is too short';
  }
  return null;
}

bool isEmailValid(String email) {
  String pattern = r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$';
  RegExp regex = RegExp(pattern);
  return regex.hasMatch(email);
}