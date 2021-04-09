import 'package:flutter/material.dart';
import 'package:live_events_app/Pages/ChangePasswordPage.dart';
import 'package:live_events_app/Pages/UpdateDetailsPage.dart';
import 'package:live_events_app/Pages/WalletPage.dart';
import 'package:live_events_app/Pages/WelcomePage.dart';

import 'Pages/AppPage.dart';
import 'Pages/LoginPage.dart';
import 'Pages/RegisterPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => AppPage(),
        '/wallet': (context) => WalletPage(),
        '/password': (context) => ChangePasswordPage(),
        '/details': (context) => UpdateDetailsPage(),
      },
    );
  }
}

