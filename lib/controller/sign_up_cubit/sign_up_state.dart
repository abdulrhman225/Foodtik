part of 'sign_up_cubit.dart';

@immutable
sealed class SignUpState {}

final class SignUpInitial extends SignUpState {}


final class SignUpUpdateDateState extends SignUpState {
  final String date;

  SignUpUpdateDateState({required this.date});
}

final class SignUpValidation extends SignUpState {
  final bool fullNameErrorText;
  final bool emailErrorText;
  final bool passwordErrorText;
  final bool birthOfDateErrorText;
  final bool obscureText;
  final bool phoneNumberErrorText;

  SignUpValidation(
      {required this.fullNameErrorText,
      required this.emailErrorText,
      required this.passwordErrorText,
      required this.birthOfDateErrorText,
      required this.obscureText,
      required this.phoneNumberErrorText});
}
