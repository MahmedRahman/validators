import 'package:queen_validators/queen_validators.dart';

/// checks if the input characters length is smaller than the min field
class MaxLength extends TextValidationRule {
  final int max;

  MaxLength(this.max, [String? error]) : super(error);

  @override
  bool isValid(String input) => input.trim().length <= max;
  @override
  String get localizedError => 'validation.max length is $max';
}
