import 'package:commerce3/ABOUTUS.dart';
import 'package:commerce3/MYORDER.dart';
import 'package:commerce3/NOtification.dart';
import 'package:commerce3/payment.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';

import 'INBOX.dart';


class more extends StatefulWidget {
  const more({super.key});

  @override
  State<more> createState() => _moreState();
}

class _moreState extends State<more> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: ListView(children: [
            SizedBox(height: 20,),
            Row(children: [

              //SizedBox(width: 2,),
              Text('More',style: TextStyle(fontSize:18 ,fontWeight:FontWeight.w700,color: Color(0xff000000)),),
              Spacer(),
              Image.asset('asset/img_14.png',width: 24,height: 24),


            ],),
            SizedBox(height: 30,),
            Container(
              width:342 ,
              height:57 ,
              decoration: BoxDecoration(
                color: Color(0xffE2E2E2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const payment()),
                  );
                },
                leading: Image.asset('asset/img_46.png',width: 40,height: 40,),
                title: Text('Payment Details',style: TextStyle(fontSize: 12,fontWeight:FontWeight.w500 ,color: Color(0xff000000)),),
                subtitle:
                Text(''),
                //trailing: Icon(Icons.more_vert),
                isThreeLine: true,
              ),
            ),



            SizedBox(height: 20,),
            Container(
              width:342 ,
              height:57 ,
              decoration: BoxDecoration(
                color: Color(0xffE2E2E2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const myorder()),
                  );
                },
                leading: Image.asset('asset/img_40.png',width: 40,height: 40,),
                title: Text('My Orders',style: TextStyle(fontSize: 12,fontWeight:FontWeight.w500 ,color: Color(0xff000000)),),
                subtitle:
                Text(''),
                //trailing: Icon(Icons.more_vert),
                isThreeLine: true,
              ),
            ),

            SizedBox(height: 20,),
            Container(
              width:342 ,
              height:57 ,
              decoration: BoxDecoration(
                color: Color(0xffE2E2E2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const notifaction()),
                  );
                },
                leading: Image.asset('asset/img_43.png',width: 40,height: 40,),
                title: Text('Notification',style: TextStyle(fontSize: 12,fontWeight:FontWeight.w500 ,color: Color(0xff000000)),),
                subtitle:
                Text(''),
                trailing: Image.asset('asset/img_44.png',width: 25,),
                isThreeLine: true,
              ),
            ),


            SizedBox(height: 20,),
            Container(
              width:342 ,
              height:57 ,
              decoration: BoxDecoration(
                color: Color(0xffE2E2E2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const inbox()),
                  );
                },
                leading: Image.asset('asset/img_41.png',width: 40,height: 40,),
                title: Text('Inbox',style: TextStyle(fontSize: 12,fontWeight:FontWeight.w500 ,color: Color(0xff000000)),),
                subtitle:
                Text(''),
                //trailing: Icon(Icons.more_vert),
                isThreeLine: true,
              ),
            ),

            SizedBox(height: 20,),
            Container(
              width:342 ,
              height:57 ,
              decoration: BoxDecoration(
                color: Color(0xffE2E2E2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  aboutus()),
                  );
                },
                leading: Image.asset('asset/img_42.png',width: 40,height: 40,),
                title: Text('About Us',style: TextStyle(fontSize: 12,fontWeight:FontWeight.w500 ,color: Color(0xff000000)),),
                subtitle:
                Text(''),
                //trailing: Icon(Icons.more_vert),
                isThreeLine: true,
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width:342 ,
              height:57 ,
              decoration: BoxDecoration(
                color: Color(0xffDE0E0E),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                onPressed: (){},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(const Color(0xffFB6B11)),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(8)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
                ),
                child: const Text("Sign Out", style: TextStyle(fontSize: 16,color: Color(0xffFFFFFF),fontWeight: FontWeight.w500),),),
            ),





          ]
          ),
        ),

      ),
    );
  }
}
