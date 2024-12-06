import 'package:commerce3/home.dart';
import 'package:commerce3/menu.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';


class offer extends StatefulWidget {
  const offer({super.key});

  @override
  State<offer> createState() => _offerState();
}

class _offerState extends State<offer> {
  @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((_) async {
  //     await Future.delayed(const Duration(seconds: 2));
  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (_) =>  profile()));
  //   });
  // }
  Widget build(BuildContext context) {
    return Scaffold(


      body:  Padding(
        padding: const EdgeInsets.only(left: 15,right: 15),
        child: SafeArea(
          child: ListView(children: [
            SizedBox(height: 20,),
            Row(children: [

              //SizedBox(width: 2,),
              Text('Latest Offers',style: TextStyle(fontSize:16 ,fontWeight:FontWeight.w700,color: Color(0xff000000)),),
              Spacer(),
              Image.asset('asset/img_14.png',width: 24,height: 24,),


            ],),
            SizedBox(height: 20,),
            Text('Find discounts, Offers special',maxLines:2,style: TextStyle(fontSize:10 ,fontWeight:FontWeight.w400,color: Color(0xffA6A6A6)),),
            Text('meal and more!',maxLines:2,style: TextStyle(fontSize:10 ,fontWeight:FontWeight.w400,color: Color(0xffA6A6A6)),),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Container(
                width:142 ,
                height: 32,
                child: ElevatedButton(
                  onPressed: (){},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xffFB6B11)),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(8)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
                  ),
                  child: const Text("Chek offers", style: TextStyle(fontSize: 12,color: Color(0xffFFFFFF),fontWeight: FontWeight.w500),),),
              ),
            ),
            SizedBox(height: 20,),
            Image.asset('asset/img_34.png',width: 375,height: 157,fit: BoxFit.cover,),
            SizedBox(height: 30,),
            Text('Cafe Elanowar',style: TextStyle(fontSize:16 ,fontWeight:FontWeight.w400,color: Color(0xff000000)),),
            Row(
              children: [
                Icon(Icons.star,color: Color(0xffFB6B11),size: 12,),
                Text('4.9(124 ratings) Cafe  Westem food',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:12,color:Color(0xffA6A6A6) ),),
              ],
            ),
            SizedBox(height: 20,),

            Image.asset('asset/img_35.png',width: 375,height: 157,fit: BoxFit.cover,),
            SizedBox(height: 20,),
            Text('ISSO',style: TextStyle(fontSize:16 ,fontWeight:FontWeight.w400,color: Color(0xff000000)),),
            Row(
              children: [
                Icon(Icons.star,color: Color(0xffFB6B11),size: 12,),
                Text('4.9(124 ratings) Cafe  Westem food',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:12,color:Color(0xffA6A6A6) ),),
              ],
            ),
            SizedBox(height: 20,),


            Image.asset('asset/img_36.png',width: 375,height: 157,fit: BoxFit.cover,),
            SizedBox(height: 20,),
            Text('Cafe Beans',style: TextStyle(fontSize:16 ,fontWeight:FontWeight.w400,color: Color(0xff000000)),),
            Row(
              children: [
                Icon(Icons.star,color: Color(0xffFB6B11),size: 12,),
                Text('4.9(124 ratings) Cafe  Westem food',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:12,color:Color(0xffA6A6A6) ),),
              ],
            ),
            SizedBox(height: 20,),





          ],),
        ),
      ),
    );
  }
}
