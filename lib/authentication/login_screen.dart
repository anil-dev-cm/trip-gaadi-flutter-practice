import 'package:flutter/material.dart';
import 'package:tripgaadi/authentication/registration_view.dart';
import 'package:tripgaadi/splashScreen/splash_screen.dart';
import 'package:tripgaadi/widget/curved_textview.dart';

import '../widget/round_btn.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController txtPhone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background_ic.png',
            height: media.height,
            width: media.width,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              Text(
                                'Enter Phone Number',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Color(0xFFaf0909),
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'We will send you a verification code your phone',
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF747370)),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Container(
                                height: 55,
                                color: Color(0xFFE9EAEC),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Image.asset(
                                      'assets/images/flag.png',
                                      width: 25,
                                      height: 25,
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      '+91',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      height: 27,
                                      width: 1,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    CurvedTextView(
                                      hintText: 'Enter mobile number',
                                      controller: txtPhone,
                                      keyboardType: TextInputType.number,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Center(
                                child: RoundButton(
                                  title: 'Login',
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SplashView()));
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(0, -170),
                      child: Positioned(
                        top: 0,
                        child: Image.asset(
                          'assets/images/app_icon.png',
                          height: 80,
                          width: 80,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 15,
            left: 130,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'New user?',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegistrationView()));
                  },
                  child: Text('Register',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFaf0909))),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
