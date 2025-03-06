part of 'sign_up_cubit.dart';

@immutable
sealed class SignUpState {}

final class SignUpInitial extends SignUpState {}

final class SignUpUpdateDateState extends SignUpState {
  final String date;

  SignUpUpdateDateState({required this.date});
}

