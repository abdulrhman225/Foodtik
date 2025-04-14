import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'design_state.dart';

class DesignCubit extends Cubit<DesignState> {
  DesignCubit() : super(DesignInitial());
  bool isLightTheme = true;



  changeTheme() async {
    isLightTheme = ! isLightTheme;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if(isLightTheme) {
      sharedPreferences.setString("theme", "light");
    }else{
      sharedPreferences.setString("theme", "dark");
    }
    emit(ChangeDesignState(isLightTheme: isLightTheme));
  }

  getSavedTheme({required String theme}){
    if(theme == "light"){
      isLightTheme = true;
      emit(ChangeDesignState(isLightTheme: isLightTheme));
    }
    else{
      isLightTheme = false;
      emit(ChangeDesignState(isLightTheme: isLightTheme));
    }
  }
}
