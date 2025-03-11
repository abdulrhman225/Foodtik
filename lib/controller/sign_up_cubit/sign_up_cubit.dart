import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  bool obscure = true;
  bool fullNameErrorText = false;
  bool emailErrorText = false;
  bool passwordErrorText = false;
  bool birthOfDateErrorText = false ;
  bool phoneNumberErrorText = false;

  updateBirthDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      String date = DateFormat('dd/MM/yyyy').format(picked);
      emit(SignUpUpdateDateState(date: date));
    }
  }

  signUpValidation({
    required String email,
    required String username,
    required String password,
    required String birthOfDate,
    required String phoneNumber,
  }) {
    String emailPattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    String passwordPattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';

    fullNameErrorText = username.isEmpty;
    emailErrorText = !RegExp(emailPattern).hasMatch(email);
    passwordErrorText = !RegExp(passwordPattern).hasMatch(password);
    birthOfDateErrorText = birthOfDate.isEmpty;
    phoneNumberErrorText = phoneNumber.isEmpty;

    emit(SignUpValidation(
      fullNameErrorText: fullNameErrorText,
      emailErrorText: emailErrorText,
      passwordErrorText: passwordErrorText,
      birthOfDateErrorText: birthOfDateErrorText,
      phoneNumberErrorText: phoneNumberErrorText,
      obscureText: obscure,
    ));
  }

  changeVisibility(){
    obscure = !obscure;
    emit(SignUpValidation(
      fullNameErrorText: fullNameErrorText,
      emailErrorText: emailErrorText,
      passwordErrorText: passwordErrorText,
      birthOfDateErrorText: birthOfDateErrorText,
      phoneNumberErrorText: phoneNumberErrorText,
      obscureText: obscure,
    ));
  }
}
