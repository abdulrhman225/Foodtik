import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  bool emailError = false;
  bool passwordError = false;
  bool checkRememberMe = false;
  bool obscureText = true;

  checkLoginValidation({required String email, required String password}){
    emailError = email.isEmpty;
    passwordError = password.isEmpty;

    emit(LoginValidationState(emailError: emailError, passwordError: passwordError, checkRememberMe: checkRememberMe , obscureText:obscureText));
  }

  changeCheckRememberMe(){
    checkRememberMe = !checkRememberMe;
    emit(LoginValidationState(emailError: emailError, passwordError: passwordError, checkRememberMe: checkRememberMe , obscureText:obscureText));
  }

  changeVisibility(){
    obscureText = !obscureText;
    emit(LoginValidationState(emailError: emailError, passwordError: passwordError, checkRememberMe: checkRememberMe , obscureText:obscureText));
  }

  loginViaGoogle() async {
    try {
      // Trigger the Google Sign-In flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      if (googleUser != null) {
        // Obtain the auth details from the request
        final GoogleSignInAuthentication googleAuth = await googleUser
            .authentication;

        // Create a new credential
        final OAuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );

        // Sign in to Firebase with the credential
        final UserCredential userCredential = await FirebaseAuth.instance
            .signInWithCredential(credential);

        // Successfully signed in
        final User? user = userCredential.user;
        print('Signed in with Google: ${user?.email}');


      }
    } catch (e) {
      print('Error signing in with Google: $e');
    }
  }

  loginViaFacebook() async {
    try {
      // Trigger the Facebook Login flow
      final LoginResult result = await FacebookAuth.instance.login();

      if (result.status == LoginStatus.success) {
        // Get the user's profile information
        final AccessToken accessToken = result.accessToken!;
        final userData = await FacebookAuth.instance.getUserData();

        // Successfully signed in
        print('Signed in with Facebook: ${userData['name']}');

        // Navigate to the home screen or perform other actions
      } else {
        print('Facebook login failed: ${result.status}');
      }
    } catch (e) {
      print('Error signing in with Facebook: $e');
    }
  }
}
