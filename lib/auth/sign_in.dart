import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/background.png')),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              height: 400,
              width: double.infinity,

              // ignore: prefer_const_literals_to_create_immutables
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Sign in to Continue'),
                    // ignore: prefer_const_constructors
                    Text(
                      'APP NAME',
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          shadows: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Colors.green.shade900,
                              // ignore: prefer_const_constructors
                              offset: Offset(3, 3),
                            )
                          ]),
                    ),

                    Column(
                      children: [
                        SignInButton(
                          Buttons.Apple,
                          text: "Sign in with Apple",
                          onPressed: () {},
                        ),
                        SignInButton(
                          Buttons.Google,
                          text: "Sign in with Google",
                          onPressed: () {},
                        ),
                      ],
                    ),

                    // ignore: prefer_const_constructors
                    Column(
                      children: [
                        Text(
                          'By signing in you are ageering to our',
                          style: TextStyle(
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                    // ignore: prefer_const_constructors
                    Text(
                      'Terms and conditions',
                      style: TextStyle(
                        color: Colors.grey[800],
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
