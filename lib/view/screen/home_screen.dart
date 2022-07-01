import 'package:flutter/material.dart';
import 'package:zoom_app/utility/colors.dart';
import 'package:zoom_app/view/screen/history_screen.dart';
import 'package:zoom_app/view/screen/meeting_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => HomeScreenState();

}
class HomeScreenState extends State<HomeScreen>{
final pages=[
  MeetingScreen(),
  HistoryScreen(),
];
  @override
  Widget build(BuildContext context) {
    int pageIndex=0;
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState((){
            pageIndex = index;
          });
        },
        currentIndex: pageIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: footerColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.comment_bank),
            label: 'Meet & Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_clock),
            label: 'Meeting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.percent_outlined),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
      ),
      body: pages[pageIndex],
      appBar: AppBar(
        title: const Text('Meet and Chat',
        style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),),
        centerTitle: true,
      ),
    );
  }
}
