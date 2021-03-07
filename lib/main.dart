import 'package:cozy/pages/detail_page.dart';
import 'package:cozy/pages/home_page.dart';
import 'package:cozy/pages/login_page.dart';
import 'package:cozy/pages/register_page.dart';
import 'package:cozy/pages/splash_page.dart';
import 'package:cozy/providers/space_provider.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.deepOrangeAccent,
    // navigation bar color
    statusBarColor: purpleColor,
    // status bar color
    statusBarBrightness: Brightness.light,
    //status bar brigtness
    statusBarIconBrightness: Brightness.light,
    //status barIcon Brightness
    systemNavigationBarDividerColor: Colors.greenAccent,
    //Navigation bar divider color
    systemNavigationBarIconBrightness: Brightness.light, //navigation bar icon
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SpaceProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/' : (context) => SplashPage(),
          '/home' : (context) => HomePage(),
          '/login' : (context) => LoginPage(),
          '/register': (context) => RegisterPage()
        },
      ),
    );
  }
}
