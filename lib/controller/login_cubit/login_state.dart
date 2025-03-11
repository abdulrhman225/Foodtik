part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginValidationState extends LoginState {
  final bool emailError;
  final bool passwordError;
  final bool checkRememberMe;
  final bool obscureText;

  LoginValidationState(
      {required this.emailError, required this.passwordError, required this.checkRememberMe , required this.obscureText});
}

