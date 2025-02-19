import 'package:email_validator/email_validator.dart';
import 'package:nations/nations.dart';
import 'package:queen_validators/queen_validators.dart';

/// checks if the input is a valid `email` address
class IsEmail extends TextValidationRule {
  const IsEmail([String? error]) : super(error);

  @override
  bool isValid(String input) => isEmail(input);
  @override
  String get localizedError => 'validation.is_not_email_address'.tr;
}

/// checks if the value can be well formatted email address
bool isEmail(String? email) => EmailValidator.validate(email ?? '');
