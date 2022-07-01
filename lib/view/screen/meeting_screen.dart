import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoom_app/view/widgets/reusable_icons.dart';

class MeetingScreen extends StatelessWidget {
  const MeetingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ReusableIcons(
                  icons: Icons.videocam, text: 'New Meeting', onPressed: () {
                  print('new meeting');
                },),
                ReusableIcons(icons: Icons.add_box_rounded, text: 'Join Meeting',
                  onPressed: () {
                    print('Join meeting');
                  },),
                ReusableIcons(icons: Icons.calendar_today, text: 'Schedule',
                  onPressed: () {
                    print('Schedule meeting');
                  },),
                ReusableIcons(icons: Icons.arrow_upward, text: 'Share Screen',
                  onPressed: () {
                    print('Share Screen');
                  },),
              ],
            ),
          Expanded(child: Center(
            child: Text(
              'Create and Join meetings with just a click',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ),
          ],
        ),

      ),
    );
  }
}
