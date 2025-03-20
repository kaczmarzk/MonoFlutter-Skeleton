import 'package:formz/formz.dart';

// Define input validation errors
enum NicknameInputError {
  empty,
  notCorrectLength,
  containsProhibitedChars,
}

class NicknameInput extends FormzInput<String, NicknameInputError> {
  // Call super.pure to represent an unmodified form input.
  const NicknameInput.pure() : super.pure('');

  // Call super.dirty to represent a modified form input.
  const NicknameInput.dirty({String value = ''}) : super.dirty(value);

  static final RegExp charsRegExp = RegExp(r'^[A-Za-z0-9_.]+$');
  static const int minLength = 3;
  static const int maxLength = 15;

  @override
  NicknameInputError? validator(String value) {
    if (value.isEmpty) return NicknameInputError.empty;
    if (!charsRegExp.hasMatch(value)) return NicknameInputError.containsProhibitedChars;
    if (value.length > maxLength || value.length < minLength) return NicknameInputError.notCorrectLength;
    return null;
  }
}
