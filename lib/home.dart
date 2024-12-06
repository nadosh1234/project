
import 'package:commerce3/menu.dart';
import 'package:commerce3/more.dart';
import 'package:commerce3/offers.dart';
import 'package:commerce3/profile.dart';
import 'package:flutter/material.dart';

import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';



class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: ListView(children: [
            SizedBox(height: 30,),
            Row(children: [
              Image.asset('asset/img_13.png',width: 34,height: 34,),
              SizedBox(width: 10,),
              Text('Hello ,NADA!',style: TextStyle(fontSize:25 ,fontWeight:FontWeight.w500 ,color: Color(0xff000000)),),
              Spacer(),
              Image.asset('asset/img_14.png',width: 24,height: 24,),


            ],),
            SizedBox(height: 20,),
            Row(

              children: [
                Image.asset('asset/img_4.png',width: 16,height: 20,),
                SizedBox(width: 10,),
                Text('9West ,46th street, New Mansours',style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w400 ,color: Color(0xff8D8B8B)),),

              ],
            ),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffE2E2E2),
                borderRadius: BorderRadius.circular(30),

              ),

              child: SizedBox(
                width: 344,
                height: 48,
                child: TextField(

                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  decoration: InputDecoration(
                    border:OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:Color(0xffE2E2E2)),
                      borderRadius: BorderRadius.circular(30),
                    ),

                    hintText: "Search Food",
                    hintStyle: TextStyle(fontSize: 14,color: Color(0xffA4A4A4),fontWeight: FontWeight.w400),
                    prefixIcon: Icon(Icons.search,color: Color(0xff8D8B8B),size: 24,),

                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Column(
                  children: [
                    Image.asset('asset/img_15.png',width: 74,height: 74,),
                    Text('Offers',style: TextStyle(fontWeight:FontWeight.w400 ,fontSize:10 ,color:Color(0xff181818) ),),
                  ],
                ),
                Spacer(),

                Column(
                  children: [
                    Image.asset('asset/img_16.png',width: 74,height: 74,),
                    Text('Italian',style: TextStyle(fontWeight:FontWeight.w400 ,fontSize:10 ,color:Color(0xff181818) ),),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Image.asset('asset/img_17.png',width: 74,height: 74,),
                    Text('Indian',style: TextStyle(fontWeight:FontWeight.w400 ,fontSize:10 ,color:Color(0xff181818) ),),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Image.asset('asset/img_18.png',width: 74,height: 74,),
                    Text('Egyptian',style: TextStyle(fontWeight:FontWeight.w400 ,fontSize:10 ,color:Color(0xff181818) ),),
                  ],
                ),

              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text('Popular Restaurant',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:16,color:Color(0xff000000) ),),
                Spacer(),

                Text('View all',style: TextStyle(fontWeight:FontWeight.w400 ,fontSize:14,color:Color(0xffFB6B11) ),),
              ],
            ),
            SizedBox(height: 20,),
            Image.asset('asset/img_19.png',width: 375,height: 167,fit: BoxFit.cover,),
            SizedBox(height: 10,),
            Text('Minute by tuk tuk',style: TextStyle(fontWeight:FontWeight.w400 ,fontSize:16 ,color:Color(0xff000000) ),),
            Row(
              children: [
                Icon(Icons.star,color: Color(0xffFB6B11),size: 12,),
                Text('4.9(124 ratings) Cafe  Westem food',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:12,color:Color(0xffA6A6A6) ),),
              ],
            ),
            SizedBox(height: 10,),


            Image.asset('asset/img_20.png',width: 375,height: 167,fit: BoxFit.cover,),
            SizedBox(height: 10,),
            Text('Cafe Elanowar',style: TextStyle(fontWeight:FontWeight.w400 ,fontSize:16,color:Color(0xff000000) ),),
            Row(
              children: [
                Icon(Icons.star,color: Color(0xffFB6B11),size: 12,),
                Text('4.9(124 ratings) Cafe  Westem food',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:12,color:Color(0xffA6A6A6) ),),
              ],
            ),
            SizedBox(height: 10,),



            Image.asset('asset/img_21.png',width: 375,height: 167,fit: BoxFit.cover,),
            SizedBox(height: 10,),
            Text('Bakes by tela',style: TextStyle(fontWeight:FontWeight.w400 ,fontSize:16 ,color:Color(0xff000000) ),),
            Row(
              children: [
                Icon(Icons.star,color: Color(0xffFB6B11),size: 12,),
                Text('4.9(124 ratings) Cafe  Westem food',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:12,color:Color(0xffA6A6A6) ),),
              ],
            ),
            SizedBox(height: 20,),
            Image.asset('asset/img_22.png',width: 343,height: 271,),


          ],),
        ),
      ),
    );
  }
}
