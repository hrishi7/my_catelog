import 'package:flutter/material.dart';
import 'package:my_catelog/pages/cart_page.dart';
import 'package:my_catelog/pages/home_page.dart';
import 'package:my_catelog/pages/login_page.dart';
import 'package:my_catelog/store/store.dart';
import 'package:my_catelog/utils/routes.dart';
import 'package:my_catelog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(
    store:MyStore(),
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.system,
        theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),
        debugShowCheckedModeBanner: false,
        initialRoute: MyRoutes.homeRoute,
        routes: {
          "/": (context) => const LoginPage(),
          MyRoutes.homeRoute: (context) => const HomePage(),
          MyRoutes.loginRoute: (context) => const LoginPage(),
          MyRoutes.cartRoute: (context) => const CartPage(),
        });
  }
}
