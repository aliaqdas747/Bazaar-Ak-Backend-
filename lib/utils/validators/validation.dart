class RValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is Required';
    }

    //Regular Expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email Address';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';

      //Check for Minimum Password Length
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }

    //Check for Uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contains  at least one uppercase letter,';
    }

    //Check for numbers
    if (!value.contains(RegExp(r'[0,9]'))) {
      return 'Password must contains at least one number.';
    }

    //Check for special Characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?:{}|<>]'))) {
      return 'Passwords must contain at least one special character';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }

    //Regular expression for phone number validation (assuming a 10 digit US phone Number Format)
    final phoneRegExp = RegExp(r'^\d{10}$');

    if(!phoneRegExp.hasMatch(value)){
      return 'Invalid phone number format (10 digits required).';

    }
    return null;

  }
  //Add more custom validators as needed for your specific requirements.


}