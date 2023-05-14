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
        body: Container(
      width: double.infinity,
      child: Column(
        children: [
          imageBanner(),
          TextField(
            decoration: InputDecoration(
                hintText: 'Email',
                labelText: 'Email',
                suffixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: 'Password',
                labelText: 'Password',
                suffixIcon: const Icon(Icons.lock),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: MyColors.primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15)),
            child: const Text('Sign in'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('You don\'t have an account?'),
              TextButton(
                  onPressed: () {},
                  child: const Text('Sign up',
                      style: TextStyle(
                          color: MyColors.primaryColor,
                          fontWeight: FontWeight.bold)))
            ],
          )
        ],
      ),
    ));
  }

  Widget imageBanner() {
    return Image.asset(
      'assets/img/delivery.png',
      height: 200,
      width: 200,
    );
  }
}
