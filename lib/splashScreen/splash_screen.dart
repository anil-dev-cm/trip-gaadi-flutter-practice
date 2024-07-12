import 'package:flutter/material.dart';
import 'package:tripgaadi/authentication/login_screen.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    goWelcomePage();
  }

  void goWelcomePage() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginView()));
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        Image.asset(
          'assets/images/new_splash_img.png',
          height: media.height,
          width: media.width,
          fit: BoxFit.cover,
        ),
      ]),
    );
  }
}
