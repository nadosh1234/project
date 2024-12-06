import 'package:flutter/material.dart';

import 'signup.dart';
import 'log.dart';


class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();

}

class _homepageState extends State<homepage> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 2));
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) =>  log()));
    });
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              width: double.infinity,
              child: Image.asset('asset/img.png',width: 190,height: 190,)),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Taste',style: TextStyle(fontSize:34 ,fontWeight: FontWeight.w400 ,color: Color(0xffFB6B11)),),
              Text('Corner',style: TextStyle(fontSize:34 ,fontWeight: FontWeight.w400 ,color: Color(0xff1E1E1E)),),

            ],
          ),
        ],
      ),
    );
  }
}
