import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../view/screen/congratulations_dialog.dart';

part 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit() : super(ResetPasswordInitial());

  bool newPasswordError = false;
  bool confirmPasswordError = false;

  resetPasswordValidation({required String newPassword, required String confirmPassword , required BuildContext context}) {
    String passwordPattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    newPasswordError = !RegExp(passwordPattern).hasMatch(newPassword);

    confirmPasswordError = newPassword != confirmPassword;

    if (newPasswordError || confirmPasswordError) {
      emit(ResetPasswordValidation(newPasswordError: newPasswordError,
          confirmPasswordError: confirmPasswordError));
    }
    else{
      showDialog(
        context: context,
        builder: (context) {
          return CongratulationsDialog();
        },
      );
    }
  }
}
