import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoom_app/controller/auth_controller.dart';
import 'package:zoom_app/view/screen/home_screen.dart';
import 'package:zoom_app/view/widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final AuthController _authController = AuthController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Start or join meeting',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
            ),
            child: Image.asset(
              'assets/images/onboarding.jpg',
            ),
          ),
          CustomButton(
            text: "Login",
            onPressed: () {
              print('OnPressed is pressed');
              _authController.signInWithGoogle();
              Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context){
                return HomeScreen();
              },),
              );
            },
          ),
        ],
      ),
    );
  }
}
