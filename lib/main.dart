import 'package:Foodtik/controller/favorite_screen_cubit/favorite_screen_cubit.dart';
import 'package:Foodtik/controller/home_screen_cubit/home_screen_cubit.dart';
import 'package:Foodtik/controller/login_cubit/login_cubit.dart';
import 'package:Foodtik/controller/reset_password_cubit/reset_password_cubit.dart';
import 'package:Foodtik/controller/sign_up_cubit/sign_up_cubit.dart';
import 'package:Foodtik/view/screen/check_out_screen.dart';
import 'package:Foodtik/view/screen/credit_card_payment_screen.dart';
import 'package:Foodtik/view/screen/favorite_screen.dart';
import 'package:Foodtik/view/screen/location_screen.dart';
import 'package:Foodtik/view/screen/main_screen.dart';
import 'package:Foodtik/view/screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import "package:flutter_localizations/flutter_localizations.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
          ),
          BlocProvider(
            create: (context) => LoginCubit(),
          ),
          BlocProvider(
            create: (context) => ResetPasswordCubit(),
          ),
          BlocProvider(
            create: (context) => HomeScreenCubit(),
          ),
          BlocProvider(
            create: (context) => FavoriteScreenCubit(),
          ),
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
              localizationsDelegates: const [
                AppLocalizations.delegate, // Add this line
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('en'), // English
                Locale('ar'), // Spanish
              ],
              theme: ThemeData(
                primarySwatch: Colors.blue,
                textTheme:
                    Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
              ),
              home: child,
            );
          },
          child: MainScreen(),
        ));
  }
}
