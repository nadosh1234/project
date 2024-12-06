import 'package:commerce3/buttonnavigationbar.dart';
import 'package:commerce3/home.dart';
import 'package:commerce3/menu.dart';
import 'package:flutter/material.dart';


class on3 extends StatefulWidget {
  const on3({super.key});

  @override
  State<on3> createState() => _on2State();
}

class _on2State extends State<on3> {
   @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((_) async {
  //     await Future.delayed(const Duration(seconds: 2));
  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (_) =>  menu()));
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
              Container(width:double.infinity,child: GestureDetector(onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => buttonbar()),
                );

              },

                  child: Text('Skip',textAlign:TextAlign.end,style: TextStyle(fontWeight:FontWeight.w400 ,fontSize:16 ,color: Color(0xff000000)),))),
              SizedBox(height: 20,),
              Image.asset('asset/img_10.png',height: 269,width: 269,),
              SizedBox(height: 15,),
              Image.asset('asset/img_11.png',width: 80,height: 8,),
              SizedBox(height: 30,),
              Text('Live Tracking',textAlign:TextAlign.center,style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:28 ,color: Color(0xff000000),),),
              SizedBox(height: 20,),
              Text('Real time tracking of your food on the app',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:16 ,color: Color(0xffA6A6A6),),),
              Text('once you placed the order',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:16 ,color: Color(0xffA6A6A6),),),
              SizedBox(height: 30,),
              Container(
                width:293 ,
                height: 48,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  buttonbar()),
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