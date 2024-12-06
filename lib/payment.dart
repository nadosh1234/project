import 'package:flutter/material.dart';


class payment extends StatefulWidget {
  const payment({super.key});

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((_) async {
  //     await Future.delayed(const Duration(seconds: 2));
  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (_) =>  partpayment()));
  //   });
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15),
        child: ListView(
          children: [
            SizedBox(height: 30,),
            Row(children: [
              GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_left_outlined,size: 30,color: Color(0xff000000),)),
              //SizedBox(width: 2,),
              Text('Payment Details',style: TextStyle(fontSize:18 ,fontWeight:FontWeight.w700,color: Color(0xff000000)),),
              Spacer(),
              Image.asset('asset/img_14.png',width: 24,height: 24,),


            ],),
            SizedBox(height: 30,),
            Text('Customize Your Payment method',style: TextStyle(fontSize:12 ,fontWeight:FontWeight.w500,color: Color(0xff474747)),),
            SizedBox(height: 40,),
            Container(

              color: Color(0xffECECEC),
              width: 375,
              height:136 ,
              child: Padding(
                padding: const EdgeInsets.only(left: 40,right: 40),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Cash/Card on delivery',style: TextStyle(fontSize:10 ,fontWeight:FontWeight.w500,color: Color(0xff474747)),),
                        Spacer(),
                        Image.asset('asset/img_48.png',width: 35,height: 35,)
                      ],
                    ),
                    Spacer(),
                    Expanded(
                      child: Divider(
                        color: Color(0xffDEDEDE),
                        thickness: 1,
                        height: 1,
                        indent: 5,
                        endIndent: 8,


                      ),
                    ),
                    Spacer(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('VISA ****   ****  ****',style: TextStyle(fontSize:20 ,fontWeight:FontWeight.bold,color: Color(0xff474747)),),
                        Spacer(),

                        Container(
                          width:55 ,
                          height: 20,
                          child: ElevatedButton(
                            onPressed: (){},

                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(const Color(0xffECECEC)),


                              padding: MaterialStateProperty.all(const EdgeInsets.all(2)),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),side: BorderSide(color: Color(0xffFB6B11))
                              )),
                            ),
                            child: const Text("Delete", style: TextStyle(fontSize: 10,color: Color(0xffFB6B11),fontWeight: FontWeight.w400),),),
                        ),

                      ],
                    ),
                    Spacer(),
                    Expanded(
                      child: Divider(
                        color: Color(0xffDEDEDE),
                        thickness: 1,
                        height: 1,
                        indent: 5,
                        endIndent: 8,


                      ),
                    ),
                    Spacer(),
                    Container(
                        padding: EdgeInsets.only(bottom: 10),
                        width:double.infinity,child: Text('Other Method',textAlign:TextAlign.start,style: TextStyle(fontSize:10 ,fontWeight:FontWeight.w500,color: Color(0xff474747)),)),

                  ],
                ),
              ),
            ),

            SizedBox(height: 30,),
            Container(
              width:293 ,
              height: 48,
              child: ElevatedButton(
                onPressed: (){},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(const Color(0xffFB6B11)),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                ),
                child: const Text("+ Add Another Credit / debit Card", style: TextStyle(fontSize: 16,color: Color(0xffFFFFFF),fontWeight: FontWeight.w400),),),
            ),
          ],
        ),
      ),





    );
  }
}
