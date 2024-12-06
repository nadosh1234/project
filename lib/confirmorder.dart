import 'package:flutter/material.dart';

class confirm extends StatelessWidget {
  const confirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SafeArea(
  child: ListView(
    children: [
      SizedBox(height: 10,),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            Image.asset('asset/img_56.png',width: 10,height: 20,),
            SizedBox(width: 5,),
          Text('Checkout',textAlign:TextAlign.start,style: TextStyle(color: Color(0xff000000),fontSize:18 ,fontWeight:FontWeight.w700 ),)
          ],
        ),
      ),
      SizedBox(height: 20,),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Container(width:double.infinity,child: Text('Delivery Address',textAlign:TextAlign.start,style: TextStyle(color: Color(0xffD7D7D7),fontSize:12 ,fontWeight:FontWeight.w500 ),)),
      ),
      SizedBox(height: 20,),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Container(width:double.infinity,child: Text('653 Nostrand Ave,Brooklyn,Ny 11216 ',textAlign:TextAlign.start,style: TextStyle(color: Color(0xff000000),fontSize:14 ,fontWeight:FontWeight.w500 ),)),
      ),
      
      Container(
        height: 800,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color:Color(0xffFFFFFF),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 280,top: 10),
              child: Image.asset('asset/img_58.png',color: Colors.black,width: 10,height: 10,),
            ),
            SizedBox(height: 70,),
            Image.asset('asset/img_57.png',width: 270,height: 270,),
            Text('Thank You!',textAlign:TextAlign.start,style: TextStyle(color: Color(0xff000000),fontSize:20 ,fontWeight:FontWeight.w700 ),),

            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50),
              child: Text('Your Order is now being processed . We Will letyou know once the order is picked from the outlet.check the status of your Order',maxLines:3,textAlign:TextAlign.start,style: TextStyle(color: Color(0xffA6A6A6),fontSize:12 ,fontWeight:FontWeight.w500 ),),
            ),






SizedBox(height: 30,),




            Container(
              width:293 ,
              height: 48,
              child: ElevatedButton(
                onPressed: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const log2()),
                  // );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(const Color(0xffFB6B11)),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                ),
                child: const Text("Track My Order", style: TextStyle(fontSize: 16,color: Color(0xffFFFFFF),fontWeight: FontWeight.w400),),),
            ),
            const SizedBox(height: 20,),

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
                child: const Text("Back To Home", style: TextStyle(fontSize: 16,color: Color(0xffFB6B11),fontWeight: FontWeight.w400),),),
            ),
          ],
        ),
      )
    ],
  ),
),




    );
  }
}
