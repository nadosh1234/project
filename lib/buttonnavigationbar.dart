import 'package:commerce3/profile.dart';
import 'package:commerce3/regigstor.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'menu.dart';
import 'more.dart';
import 'offers.dart';

class buttonbar extends StatefulWidget {
   buttonbar({super.key});

  @override
  State<buttonbar> createState() => _buttonbarState();
}

class _buttonbarState extends State<buttonbar> {
  List SCREAN=[

    menu(),
    offer(),
    home(),
    profile(documentId: credential!.uid,),
    more(),
  ];

  int _page = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        //key: _bottomNavigationKey,
        index: _page,
        items: [
          CurvedNavigationBarItem(

              child: Icon(Icons.menu,color: Colors.white,size: 30,),
              label: 'Menu',
              labelStyle: TextStyle(color: Colors.white)

          ),
          CurvedNavigationBarItem(
              child: Icon(Icons.local_offer_outlined,color: Colors.white,size: 30,),
              label: 'Offers',
              labelStyle: TextStyle(color: Colors.white)
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.home,color: Colors.white,size: 30,),
            label: '',
          ),
          CurvedNavigationBarItem(
              child: Icon(Icons.person,color: Colors.white,size: 30,),
              label: 'Profile',
              labelStyle: TextStyle(color: Colors.white)
          ),
          CurvedNavigationBarItem(
              child: Icon(Icons.more,color: Colors.white,size: 25,),
              label: 'More',
              labelStyle: TextStyle(color: Colors.white)
          ),
        ],
        color: Color(0xffFB6B11),
        buttonBackgroundColor: Color(0xffFB6B11),
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page=index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body:SCREAN[_page],
    );
  }
}
