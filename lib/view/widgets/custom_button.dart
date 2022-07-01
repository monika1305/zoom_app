import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoom_app/utility/colors.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;

  const CustomButton({Key? key, this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        10,
      ),
      child: ElevatedButton(
        onPressed: this.onPressed,
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30,),
          )
        ),

        child: Text(
          text!,
          style: const TextStyle(
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
