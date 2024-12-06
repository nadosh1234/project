
import 'package:commerce3/onboarding1.dart';
import 'package:flutter/material.dart';

import 'signup.dart';


class log extends StatefulWidget {
  log({super.key});

  @override
  State<log> createState() => _logState();
}

class _logState extends State<log> {

  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Stack(
            children: [
              Positioned(
                //top: 0,
                // right: //left: 0,
                child: Image.asset(
                  'asset/img_1.png',
                  // fit: BoxFit.cover,
                  width: 449,
                  height: 450,
                ),
              ),
              Positioned(
                top: 230,
                left: 105,
                child: Image.asset(
                  'asset/img_2.png',
                  // fit: BoxFit.cover,
                  width: 175,
                  height: 175,
                ),
              ),
              Positioned(
                top: 30,
                left: -70,
                child: Image.asset(
                  'asset/img_3.png',
                  //fit: BoxFit.cover,
                  width: 496,
                  height: 194,
                ),
              ),


            ],
          ),
          const SizedBox(height: 10,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Taste',style: TextStyle(fontSize:34 ,fontWeight: FontWeight.w400 ,color: Color(0xffFB6B11)),),
              Text('Corner',style: TextStyle(fontSize:34 ,fontWeight: FontWeight.w400 ,color: Color(0xff1E1E1E)),),

            ],
          ),
          const Text('FOOD DELIVERY',style: TextStyle(fontSize:12 ,fontWeight: FontWeight.w400 ,color: Color(0xff747373)),),
          const SizedBox(height: 5,),
          const Text('Discover the best foods from over 1,000  '
            ,style: TextStyle(fontSize:16 ,fontWeight: FontWeight.w400 ,color: Color(0xff747373)),),
          const Text('restaurants and fast delivery to your',style: TextStyle(fontSize:16 ,fontWeight: FontWeight.w400 ,color: Color(0xff747373)),),
          const Text('doorstep',style: TextStyle(fontSize:16 ,fontWeight: FontWeight.w400 ,color: Color(0xff747373)),),
          const SizedBox(height: 10,),
          Container(
            width:293 ,
            height: 48,
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const log2()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color(0xffFB6B11)),
                padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
              ),
              child: const Text("Login", style: TextStyle(fontSize: 16,color: Color(0xffFFFFFF),fontWeight: FontWeight.w400),),),
          ),
          const SizedBox(height: 10,),

          Container(
            width:293 ,
            height: 48,
            child: ElevatedButton(
              onPressed: (){
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const on1()),
                // );

              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color(0xffFFFFFF)),
                padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),side: const BorderSide(color: Color(0xffFB6B11))),),
              ),
              child: const Text("Create an account", style: TextStyle(fontSize: 16,color: Color(0xffFB6B11),fontWeight: FontWeight.w400),),),
          ),



        ],
      ),

    );
  }
}
