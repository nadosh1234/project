import 'package:flutter/material.dart';


class notifaction extends StatefulWidget {
  const notifaction({super.key});

  @override
  State<notifaction> createState() => _notifactionState();
}

class _notifactionState extends State<notifaction> {
  @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((_) async {
  //     await Future.delayed(const Duration(seconds: 2));
  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (_) =>  aboutus()));
  //   });
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 30,),
          Row(children: [
            GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },

                child: Icon(Icons.arrow_left_outlined,size: 30,color: Color(0xff000000),)),
            //SizedBox(width: 2,),
            Text('Notification',style: TextStyle(fontSize:18 ,fontWeight:FontWeight.w700,color: Color(0xff000000)),),
            Spacer(),
            Image.asset('asset/img_14.png',width: 24,height: 24,),


          ],),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 5),
            child: Container(
              width: 375,
              height: 60,
              color: Color(0xffFFFFFF),
              child: ListTile(
                leading:Image.asset('asset/img_49.png') ,
                title:Text('Your order has been picked up. ',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w400 ,color: Color(0xff000000)),) ,
                subtitle:Text('Now',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w400 ,color: Color(0xffA6A6A6)),) ,
              ),
            ),
          ),

          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 5),
            child: Container(
              width: 375,
              height: 60,
              color: Color(0xffFFFFFF),
              child: ListTile(
                leading:Image.asset('asset/img_49.png') ,
                title:Text('Your order has been delivered.',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w400 ,color: Color(0xff000000)),) ,
                subtitle:Text('1 h ago',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w400 ,color: Color(0xffA6A6A6)),) ,
              ),
            ),
          ),


          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 5),
            child: Container(
              width: 375,
              height: 60,
              color: Color(0xffFFFFFF),
              child: ListTile(
                leading:Image.asset('asset/img_49.png') ,
                title:Text('Lorem ipsum dolor sit amet consectetur. ',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w400 ,color: Color(0xff000000)),) ,
                subtitle:Text('5 h ago',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w400 ,color: Color(0xffA6A6A6)),) ,
              ),
            ),
          ),


          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 5),
            child: Container(
              width: 375,
              height: 60,
              //color: Color(0xffFFFFFF),
              child: ListTile(
                leading:Image.asset('asset/img_49.png') ,
                title:Text('Lorem ipsum dolor sit amet consectetur.',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w400 ,color: Color(0xff000000)),) ,
                subtitle:Text('12 h ago',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w400 ,color: Color(0xffA6A6A6)),) ,
              ),
            ),
          ),


          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 5),
            child: Container(
              width: 375,
              height: 60,
              color: Color(0xffFFFFFF),
              child: ListTile(
                leading:Image.asset('asset/img_49.png') ,
                title:Text('Lorem ipsum dolor sit amet consectetur.',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w400 ,color: Color(0xff000000)),) ,
                subtitle:Text('27 Aug 2023',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w400 ,color: Color(0xffA6A6A6)),) ,
              ),
            ),
          ),


          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 5),
            child: Container(
              width: 375,
              height: 60,
              color: Color(0xffFFFFFF),
              child: ListTile(
                leading:Image.asset('asset/img_49.png') ,
                title:Text('Lorem ipsum dolor sit amet consectetur.',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w400 ,color: Color(0xff000000)),) ,
                subtitle:Text('20 May 2023',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w400 ,color: Color(0xffA6A6A6)),) ,
              ),
            ),
          ),

          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 5),
            child: Container(
              width: 375,
              height: 60,
              color: Color(0xffFFFFFF),
              child: ListTile(
                leading:Image.asset('asset/img_49.png') ,
                title:Text('Lorem ipsum dolor sit amet consectetur.',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w400 ,color: Color(0xff000000)),) ,
                subtitle:Text('15 april 2022',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w400 ,color: Color(0xffA6A6A6)),) ,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 5),
            child: Container(
              width: 375,
              height: 60,
              color: Color(0xffFFFFFF),
              child: ListTile(
                leading:Image.asset('asset/img_49.png') ,
                title:Text('Lorem ipsum dolor sit amet consectetur.',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w400 ,color: Color(0xff000000)),) ,
                subtitle:Text('12 april 2022',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w400 ,color: Color(0xffA6A6A6)),) ,
              ),
            ),
          ),


        ],
      ),
    );
  }
}
