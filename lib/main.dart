import 'package:deliveryapp/src/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:deliveryapp/src/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Delivery App Flutter",
        debugShowCheckedModeBanner: false, // Hide debug banner
        initialRoute: 'login',
        routes: {
          'login': (context) => const LoginPage(),
        },
        theme: ThemeData(primaryColor: MyColors.primaryColor));
  }
}
