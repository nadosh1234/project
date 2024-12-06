import 'package:flutter/material.dart';


class inbox extends StatefulWidget {
  const inbox({super.key});

  @override
  State<inbox> createState() => _inboxState();
}

class _inboxState extends State<inbox> {
  @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((_) async {
  //     await Future.delayed(const Duration(seconds: 2));
  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (_) =>  myorder()));
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
            Text('In Box',style: TextStyle(fontSize:18 ,fontWeight:FontWeight.w700,color: Color(0xff000000)),),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Image.asset('asset/img_51.png',width: 20,height: 20,),
            ),
          ],
          ),
          SizedBox(height: 30,),
          Container(
            width:300 ,
            height:84 ,
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              minLeadingWidth : 3,
              horizontalTitleGap: 2,
              leading: Image.asset('asset/img_49.png',width: 12,height: 30,),

              title: Text('Taste Corner Promotions',style: TextStyle(fontSize: 14,fontWeight:FontWeight.w400 ,color: Color(0xff000000)),),
              subtitle:
              Text('Lorem ipsum dolor sit amet consectetur. Nisl arcu dolor et sit ut.',style: TextStyle(fontSize: 11,fontWeight:FontWeight.w400 ,color: Color(0xffA6A6A6))),
              trailing: Column(
                children: [
                  Text('6th July',style: TextStyle(fontSize: 16,fontWeight:FontWeight.w400 ,color: Color(0xffA6A6A6))),
                  Image.asset('asset/img_52.png',width: 20,)


                ],
              ),
              isThreeLine: true,
            ),
          ),
          SizedBox(height: 25,),
          Container(
            width:300 ,
            height:84 ,
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              minLeadingWidth : 3,
              horizontalTitleGap: 2,
              leading: Image.asset('asset/img_49.png',width: 12,height: 30,),

              title: Text('Taste Corner Promotions',style: TextStyle(fontSize: 14,fontWeight:FontWeight.w400 ,color: Color(0xff000000)),),
              subtitle:
              Text('Lorem ipsum dolor sit amet consectetur. Nisl arcu dolor et sit ut.',style: TextStyle(fontSize: 11,fontWeight:FontWeight.w400 ,color: Color(0xffA6A6A6))),
              trailing: Column(
                children: [
                  Text('6th July',style: TextStyle(fontSize: 16,fontWeight:FontWeight.w400 ,color: Color(0xffA6A6A6))),
                  Image.asset('asset/img_52.png',width: 20,)


                ],
              ),
              isThreeLine: true,
            ),
          ),
          SizedBox(height: 25,),
          Container(
            width:300 ,
            height:84 ,
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              minLeadingWidth : 3,
              horizontalTitleGap: 2,
              leading: Image.asset('asset/img_49.png',width: 12,height: 30,),

              title: Text('Taste Corner Promotions',style: TextStyle(fontSize: 14,fontWeight:FontWeight.w400 ,color: Color(0xff000000)),),
              subtitle:
              Text('Lorem ipsum dolor sit amet consectetur. Nisl arcu dolor et sit ut.',style: TextStyle(fontSize: 11,fontWeight:FontWeight.w400 ,color: Color(0xffA6A6A6))),
              trailing: Column(
                children: [
                  Text('6th July',style: TextStyle(fontSize: 16,fontWeight:FontWeight.w400 ,color: Color(0xffA6A6A6))),
                  Image.asset('asset/img_52.png',width: 20,)


                ],
              ),
              isThreeLine: true,
            ),
          ),
          SizedBox(height: 25,),
          Container(
            width:300 ,
            height:84 ,
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              minLeadingWidth : 3,
              horizontalTitleGap: 2,
              leading: Image.asset('asset/img_49.png',width: 12,height: 30,),

              title: Text('Taste Corner Promotions',style: TextStyle(fontSize: 14,fontWeight:FontWeight.w400 ,color: Color(0xff000000)),),
              subtitle:
              Text('Lorem ipsum dolor sit amet consectetur. Nisl arcu dolor et sit ut.',style: TextStyle(fontSize: 11,fontWeight:FontWeight.w400 ,color: Color(0xffA6A6A6))),
              trailing: Column(
                children: [
                  Text('6th July',style: TextStyle(fontSize: 16,fontWeight:FontWeight.w400 ,color: Color(0xffA6A6A6))),
                  Image.asset('asset/img_52.png',width: 20,)


                ],
              ),
              isThreeLine: true,
            ),
          ),
          SizedBox(height: 25,),

        ],),

    );
  }
}
