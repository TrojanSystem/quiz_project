import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:quiz_project/quiz_screens/quiz_main_screen.dart';

import '../quiz_constants.dart';
class QuizHomePage extends StatefulWidget {
  const QuizHomePage({Key? key}) : super(key: key);




  @override
  State<QuizHomePage> createState() => _QuizHomePageState();
}

class _QuizHomePageState extends State<QuizHomePage> {
  int _selectedIndex = 0;
  // static const List widgetOptions = [
  //   Text(
  //     'Home',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Likes',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Search',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Profile',
  //     style: optionStyle,
  //   ),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: QuizMainScreen(),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  Widget bottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(.1),
          )
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 8,
            activeColor: Colors.black,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: const Duration(milliseconds: 400),
            tabBackgroundColor: Colors.grey[100]!,
            color: Colors.black,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',textColor: Color.fromRGBO(6,209,243,1),
                iconColor:Colors.black ,
                iconActiveColor: Color.fromRGBO(6,209,243,1),
              ),
              GButton(
                icon:Icons.notifications,
                text: 'Notification',textColor: Color.fromRGBO(6,209,243,1),
                iconColor:Colors.black ,
                iconActiveColor: Color.fromRGBO(6,209,243,1),
              ),
              GButton(
                icon:Icons.cases,
                text: 'Cash',textColor: Color.fromRGBO(6,209,243,1),
                iconColor:Colors.black ,
                iconActiveColor: Color.fromRGBO(6,209,243,1),
              ),
              GButton(
                icon: LineIcons.user,
                text: 'Profile',textColor: Color.fromRGBO(6,209,243,1),
                iconColor:Colors.black ,
                iconActiveColor: Color.fromRGBO(6,209,243,1),
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}