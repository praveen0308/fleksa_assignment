import 'package:fleksa_assignment/repository/menu_repository.dart';
import 'package:fleksa_assignment/screens/home_page.dart';
import 'package:fleksa_assignment/screens/home_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);


  static const primarySwatchColor = MaterialColor(0xFFFFC107, {
    50: Color.fromRGBO(0, 0, 0, .1),
    100: Color.fromRGBO(0, 0, 0, .2),
    200: Color.fromRGBO(0, 0, 0, .3),
    300: Color.fromRGBO(0, 0, 0, .4),
    400: Color.fromRGBO(0, 0, 0, .5),
    500: Color.fromRGBO(0, 0, 0, .6),
    600: Color.fromRGBO(0, 0, 0, .7),
    700: Color.fromRGBO(0, 0, 0, .8),
    800: Color.fromRGBO(0, 0, 0, .9),
    900: Color.fromRGBO(0, 0, 0, 1),
  });
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [RepositoryProvider(create: (_) => MenuRepository())],
      child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => HomePageCubit(MenuRepository())),
          ],
          child: MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: primarySwatchColor,
              elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
            primary: Colors.black,
                onPrimary: Colors.white)),
            ),
            home: const HomePage(),

          )),
    );
  }
}
