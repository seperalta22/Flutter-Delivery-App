import 'package:deliveryapp/src/utils/my_colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Stack(
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                color: MyColors.primaryColor),
          ),
          Container(
              margin: const EdgeInsets.only(top: 60, left: 40),
              child: const Text('Login Page')),
        ],
      ),
    );
  }
}
