
import 'package:commerce3/dessert.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';



class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  int _currentIndex=0;
  @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((_) async {
  //     await Future.delayed(const Duration(seconds: 2));
  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (_) =>  partofmenu()));
  //   });
  // }
  Widget build(BuildContext context) {
    return Scaffold(



      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: ListView(children: [
            SizedBox(height: 30,),
            Row(children: [
              Text('Menu',style: TextStyle(fontSize:25 ,fontWeight:FontWeight.w500 ,color: Color(0xff000000)),),
              Spacer(),
              Image.asset('asset/img_14.png',width: 24,height: 24,),


            ],),
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
            SizedBox(height: 30,),
            GestureDetector(
                onTap: ()
                {
Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  dessret()),
                  );
               },
                child: Image.asset('asset/img_12.png',height: 452,width: 479,)),
            SizedBox(height: 30,),


          ],),
        ),
      ),




    );
  }
}
