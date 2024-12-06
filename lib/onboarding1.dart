

import 'package:commerce3/buttonnavigationbar.dart';
import 'package:commerce3/home.dart';
import 'package:commerce3/menu.dart';
import 'package:commerce3/onboarding2.dart';
import 'package:flutter/material.dart';

class on1 extends StatefulWidget {
  const on1({super.key});

  @override
  State<on1> createState() => _on1State();
}

class _on1State extends State<on1> {
  @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((_) async {
  //     await Future.delayed(const Duration(seconds: 2));
  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (_) =>  on2()));
  //   });
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(15),
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 30,),
              Container(width:double.infinity,child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => buttonbar()),
                  );

                },
                  child: Text('Skip',textAlign:TextAlign.end,style: TextStyle(fontWeight:FontWeight.w400 ,fontSize:16 ,color: Color(0xff000000)),))),
              SizedBox(height: 20,),
              Image.asset('asset/img_6.png',height: 269,width: 269,),
              SizedBox(height: 15,),
              Image.asset('asset/img_7.png',width: 80,height: 8,),
              SizedBox(height: 30,),
              Text('Find Food You Love',textAlign:TextAlign.center,style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:28 ,color: Color(0xff000000),),),
              SizedBox(height: 20,),
              Text('Discover the best foods and fast ',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:16 ,color: Color(0xffA6A6A6),),),
              Text('delivery to your doorstep',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:16 ,color: Color(0xffA6A6A6),),),
              SizedBox(height: 30,),
              Container(
                width:293 ,
                height: 48,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const on2()),
                    );


                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xffFB6B11)),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                  ),
                  child: const Text("Next", style: TextStyle(fontSize: 16,color: Color(0xffFFFFFF),fontWeight: FontWeight.w400),),),
              ),






            ],
          ),
        ),
      ),
    );
  }
}
