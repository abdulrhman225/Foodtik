import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Foodtik/controller/sign_up_cubit/sign_up_cubit.dart';
import 'package:Foodtik/view/screen/login_screen.dart';
import 'package:Foodtik/view/screen/new_passowrd_screen.dart';
import 'package:Foodtik/view/screen/reset_password_screen.dart';
import 'package:Foodtik/view/screen/sign_up_screen.dart';
import 'package:Foodtik/view/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => SignUpCubit(),
          )
        ],
        child: ScreenUtilInit(
          designSize: const Size(430, 932),
          minTextAdapt: true,
          splitScreenMode: true,
          // Use builder only if you need to use library outside ScreenUtilInit context
          builder: (context, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'First Method',
              // You can use the library anywhere in the app even in theme
              theme: ThemeData(
                primarySwatch: Colors.blue,
                textTheme:
                    Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
              ),
              home: child,
            );
          },
          child: SplashScreen() ,
        ));
  }
}
