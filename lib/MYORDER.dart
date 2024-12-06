import 'package:commerce3/confirmorder.dart';
import 'package:flutter/material.dart';

class myorder extends StatelessWidget {
  const myorder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
              Text('My Orders',style: TextStyle(fontSize:18 ,fontWeight:FontWeight.w700,color: Color(0xff000000)),),
              Spacer(),
              Image.asset('asset/img_53.png',width: 24,height: 24,),


            ],),
            SizedBox(height: 20,),
            Row(
              children: [
                Card(child: Image.asset('asset/img_55.png',width: 74,)),
                Column(
                  children: [
                    Text('King Burgers',style: TextStyle(fontSize:16 ,fontWeight:FontWeight.w500,color: Colors.black),),

                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.orange,size: 15,),
                        Text('4.9(124 ratings) ',style: TextStyle(fontSize:12 ,fontWeight:FontWeight.w400,color: Colors.grey),),
                      ],
                    ),

                    Text('Burger .Western food  ',style: TextStyle(fontSize:12 ,fontWeight:FontWeight.w400,color: Color(0xff8D8B8B)),),
                   
                    Row(
                      children: [
                        Image.asset('asset/img_54.png',width: 16,height: 20,),
                        SizedBox(width: 5,),
                        Text('9West ,46th street, New Mansours',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w400,color: Color(0xff8D8B8B)),),
                      ],
                    ),

                  ],
                )




              ],
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(25),
              color: Color(0xffD2D2D2),
              width: double.infinity,
              height: 250,
              child: const Column(
                children: [
                  Row(

                    children: [
                      Text('Beef Burger x1',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w400,color: Color(0xff575757)),),
                      Spacer(),
                      Text('\$16',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w500,color: Color(0xff000000)),),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    color: Colors.black26,
                    thickness: 1,
                    height: 1,
                    //indent: 5,



                  ),
                  SizedBox(height: 10,),
                  Row(

                    children: [
                      Text('Cheese chicken Burger x1',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w400,color: Color(0xff575757)),),
                      Spacer(),
                      Text('\$16',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w500,color: Color(0xff000000)),),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    color: Colors.black26,
                    thickness: 1,
                    height: 1,
                    indent: 5,
                    endIndent: 8,


                  ),
                  SizedBox(height: 10,),
                  Row(

                    children: [
                      Text('Beef Burger x1',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w400,color: Color(0xff575757)),),
                      Spacer(),
                      Text('\$16',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w500,color: Color(0xff000000)),),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    color: Colors.black26,
                    thickness: 1,
                    height: 1,
                    indent: 5,
                    endIndent: 8,


                  ),
                  SizedBox(height: 10,),
                  Row(

                    children: [
                      Text('Chicken legs basket x1',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w400,color: Color(0xff575757)),),
                      Spacer(),
                      Text('\$30',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w500,color: Color(0xff000000)),),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    color: Colors.black26,
                    thickness: 1,
                    height: 1,
                    indent: 5,
                    endIndent: 8,


                  ),
                  SizedBox(height: 10,),
                  Row(

                    children: [
                      Text('French fries large x1',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w400,color: Color(0xff575757)),),
                      Spacer(),
                      Text('\$20',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w500,color: Color(0xff000000)),),
                      Divider(
                        color: Colors.black26,
                        thickness: 1,
                        height: 1,
                        //indent: 5,



                      ),

                    ],
                  ),
                ],
              ),

            ),
            Container(
              padding: EdgeInsets.all(25),
              width: double.infinity,
              height: 200,
              color: Colors.white,
              child:  Column(
                children: [
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Delivery instrusctions ',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w500,color: Color(0xff000000)),),
                      Spacer(),

                      Text('+ Add Notes ',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w700,color: Color(0xffFB6B11)),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    color: Colors.black26,
                    thickness: 1,
                    height: 1,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text('Sub Total ',textAlign:TextAlign.start,

                      style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w500,color: Color(0xff000000)),),
                          Text('Delivery Cost   ',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w500,color: Color(0xff000000)),),
                        ],
                      ),
                      Spacer(),

                      Column(
                        children: [
                          Text('\$68 ',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w700,color: Color(0xffFB6B11)),),
                          Text('\$50 ',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w700,color: Color(0xffFB6B11)),),
                        ],
                      ),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    color: Colors.black26,
                    thickness: 1,
                    height: 1,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Total',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w500,color: Color(0xff000000)),),
                      Spacer(),

                      Text('\$71 ',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w700,color: Color(0xffFB6B11)),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    color: Colors.black26,
                    thickness: 1,
                    height: 1,
                  ),


                ],
              ),

            ),


            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                width:343 ,
                height: 50,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => confirm()),
                    );


                  },


                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xffFB6B11)),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(2)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                  ),
                  child: const Text("Checkout ", style: TextStyle(fontSize: 16,color: Color(0xffFFFFFF),fontWeight: FontWeight.w400),),),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
