import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';



class aboutus extends StatefulWidget {
  const aboutus({super.key});

  @override
  State<aboutus> createState() => _aboutusState();
}
class _aboutusState extends State<aboutus> {

  @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((_) async {
  //     await Future.delayed(const Duration(seconds: 2));
  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (_) =>  inbox()));
  //   });
  // }
  Widget build(BuildContext context) {
    return Scaffold(
        body:ListView(
          children: [
            SizedBox(height: 30,),
            Row(children: [
              IconButton(
                onPressed: ()
                {

                  Navigator.pop(context);

                },
                icon: const Icon(Icons.arrow_left_outlined,color: Color(0xff000000)),

              ),
              //SizedBox(width: 2,),
              Text('About Us',style: TextStyle(fontSize:18 ,fontWeight:FontWeight.w700,color: Color(0xff000000)),),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Image.asset('asset/img_50.png',width: 24,height: 24,),
              ),


            ],),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:6),
                    child: Image.asset('asset/img_49.png',width: 10,height: 7,),
                  ),
                  SizedBox(
                      width: 293,
                      child: Text('Lorem ipsum dolor sit amet consectetur. Congue faucibus ut a quis in. Eu quam nunc eleifend lobortis ornare nisl parturient. Posuere purus proin ipsum turpis pretium. Eget aliquam tristique nibh viverra phasellus curabitur in sed. Eget neque neque dui morbi et cursus enim ac interdum. Malesuada elit sit quis nunc. ',maxLines: 7,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6C6B6B)),))
                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:6),
                    child: Image.asset('asset/img_49.png',width: 10,height: 7,),
                  ),
                  SizedBox(
                      width: 293,
                      child: Text('Lorem ipsum dolor sit amet consectetur. Congue faucibus ut a quis in. Eu quam nunc eleifend lobortis ornare nisl parturient. Posuere purus proin ipsum turpis pretium. Eget aliquam tristique nibh viverra phasellus curabitur in sed. Eget neque neque dui morbi et cursus enim ac interdum. Malesuada elit sit quis nunc. ',maxLines: 7,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6C6B6B)),))
                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:6),
                    child: Image.asset('asset/img_49.png',width: 10,height: 7,),
                  ),
                  SizedBox(
                      width: 293,
                      child: Text('Lorem ipsum dolor sit amet consectetur. Congue faucibus ut a quis in. Eu quam nunc eleifend lobortis ornare nisl parturient. Posuere purus proin ipsum turpis pretium. Eget aliquam tristique nibh viverra phasellus curabitur in sed. Eget neque neque dui morbi et cursus enim ac interdum. Malesuada elit sit quis nunc. ',maxLines: 7,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6C6B6B)),))
                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:6),
                    child: Image.asset('asset/img_49.png',width: 10,height: 7,),
                  ),
                  SizedBox(
                      width: 293,
                      child: Text('Lorem ipsum dolor sit amet consectetur. Congue faucibus ut a quis in. Eu quam nunc eleifend lobortis ornare nisl parturient. Posuere purus proin ipsum turpis pretium. Eget aliquam tristique nibh viverra phasellus curabitur in sed. Eget neque neque dui morbi et cursus enim ac interdum. Malesuada elit sit quis nunc. ',maxLines: 7,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6C6B6B)),))
                ],
              ),
            ),

          ],
        )



    );
  }
}