part of 'reset_password_cubit.dart';

@immutable
sealed class ResetPasswordState {}

final class ResetPasswordInitial extends ResetPasswordState {}

final class ResetPasswordValidation extends ResetPasswordState {
  final bool newPasswordError;
  final bool confirmPasswordError;

  ResetPasswordValidation({required this.newPasswordError, required this.confirmPasswordError});
}

