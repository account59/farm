import 'package:dartz/dartz.dart';
import 'package:farm/domain/core/failures.dart';
import 'package:farm/domain/core/value_object.dart';
import 'package:farm/domain/core/value_validator.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }
  const Password._(this.value);
}
