import 'package:deliveryapp/src/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: Stack(children: [
        Positioned(top: -150, left: -80, child: _circleLogin()),
        Column(
          children: [
            _lottieAnimation(),
            _textFieldEmail(),
            const SizedBox(height: 10),
            _textFieldPassword(),
            const SizedBox(height: 20),
            _buttonLogin(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('You don\'t have an account?'),
                _textButtonSignUp()
              ],
            )
          ],
        ),
      ]),
    ));
  }

  Widget _circleLogin() {
    return Container(
        width: 250,
        height: 250,
        decoration: BoxDecoration(
            color: MyColors.primaryColor,
            borderRadius: BorderRadius.circular(80)),
        alignment: Alignment.center,
        child: const Padding(
          padding: EdgeInsets.only(top: 130, left: 40),
          child: Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
            ),
          ),
        ));
  }

  Widget _imageBanner() {
    return Container(
      margin: EdgeInsets.only(
          top: 100, bottom: MediaQuery.of(context).size.height * 0.09),
      child: Image.asset(
        'assets/img/delivery.png',
        height: 200,
        width: 200,
      ),
    );
  }

  Widget _lottieAnimation() {
    return Lottie.asset('assets/json/delivery.json',
        width: 600, height: 400, fit: BoxFit.fitWidth);
  }

  Widget _textFieldEmail() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
      decoration: BoxDecoration(
        color: MyColors.primaryColorOpacity,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Email',
          labelText: 'Email',
          labelStyle: TextStyle(color: MyColors.primaryColor),
          border: OutlineInputBorder(borderSide: BorderSide.none),
          contentPadding: EdgeInsets.all(20),
          suffixIcon: Icon(Icons.email, color: MyColors.primaryColor),
        ),
      ),
    );
  }

  Widget _textFieldPassword() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
      decoration: BoxDecoration(
        color: MyColors.primaryColorOpacity,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          labelText: 'Password',
          labelStyle: TextStyle(color: MyColors.primaryColor),
          border: OutlineInputBorder(borderSide: BorderSide.none),
          contentPadding: EdgeInsets.all(20),
          suffixIcon: Icon(Icons.lock_open, color: MyColors.primaryColor),
        ),
      ),
    );
  }

  Widget _buttonLogin() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 15)),
        child: const Text('Sing In',
            style: TextStyle(color: Colors.white, fontSize: 17)),
      ),
    );
  }

  Widget _textButtonSignUp() {
    return TextButton(
        onPressed: () {},
        child: const Text('Sign up',
            style: TextStyle(
                color: MyColors.primaryColor, fontWeight: FontWeight.bold)));
  }
}
