import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Store/store.dart';
import 'package:flutter_application_1/pages/cart_page.dart';
import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/widgets/themes.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(
    VxState(store:Mystore(), child: MyApp())
    );
}

class MyApp extends StatelessWidget {
  int i = 30;
  String name = "Pramod";
  bool ismale = true;
  num n = 10.3;
  var day = "Tuesday";
  var date = 10;

  static const pi = 3.14;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: myTheme.lightTheme(context),
      darkTheme: myTheme.darktheme(context),
      ///initialRoute: MyRoutes.loginroute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.loginroute: (context) => LoginPage(),
        MyRoutes.homeroute: (context) => Homepage(),
        MyRoutes.cartRoute: (context) => CartPage()
      },
    );
  }
}
