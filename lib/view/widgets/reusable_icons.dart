import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoom_app/utility/colors.dart';

class ReusableIcons extends StatelessWidget {
final IconData icons;
final String? text;
final VoidCallback onPressed;
const ReusableIcons({Key? key,required this.icons,required this.text,  required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: this.onPressed,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(10,),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ]
            ),
            child: Icon(this.icons),
          ),
        ),
        SizedBox(height: 10,),
        Text(text!,
        style: TextStyle(
          fontSize: 15,
          color: Colors.grey,
        ),
        ),
      ],
    );
  }
}
