import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'design_state.dart';

class DesignCubit extends Cubit<DesignState> {
  DesignCubit() : super(DesignInitial());
  bool isLightTheme = true;
  bool isEnglish = true;



  changeTheme() async {
    isLightTheme = ! isLightTheme;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if(isLightTheme) {
      sharedPreferences.setString("theme", "light");
    }else{
      sharedPreferences.setString("theme", "dark");
    }
    emit(ChangeDesignState(isLightTheme: isLightTheme , isEnglish: isEnglish));
  }

  getSavedTheme({required String theme}){
    if(theme == "light"){
      isLightTheme = true;
      emit(ChangeDesignState(isLightTheme: isLightTheme , isEnglish: isEnglish));
    }
    else{
      isLightTheme = false;
      emit(ChangeDesignState(isLightTheme: isLightTheme , isEnglish: isEnglish));
    }
  }

  changeLanguage() async {
    isEnglish = ! isEnglish;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if(isEnglish) {
      sharedPreferences.setString("language", "english");
    }else{
      sharedPreferences.setString("language", "arabic");
    }
    emit(ChangeDesignState(isLightTheme: isLightTheme , isEnglish: isEnglish));
  }

  getSavedLanguage({required String language}){
    if(language == "english"){
      isEnglish = true;
      emit(ChangeDesignState(isLightTheme: isLightTheme , isEnglish: isEnglish));
    }
    else{
      isEnglish = false;
      emit(ChangeDesignState(isLightTheme: isLightTheme , isEnglish: isEnglish));
    }
  }
}
