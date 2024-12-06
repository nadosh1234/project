import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:path/path.dart' show basename;
import 'package:image_picker/image_picker.dart';
import "dart:math";

class profile extends StatefulWidget {
  final String documentId;
   profile({super.key,required this.documentId});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override

  CollectionReference users =
  FirebaseFirestore.instance.collection('userrrs');

  final credential = FirebaseAuth.instance.currentUser;
  String? imgName;
  File? imgPath;
  Widget build(BuildContext context) {
    uploadImage2Screen(ImageSource sss) async {
      final pickedImg = await ImagePicker().pickImage(source: sss);
      try {
        if (pickedImg != null) {
          setState(() {
            imgPath = File(pickedImg.path);
            imgName = basename(pickedImg.path);
            int random = Random().nextInt(9999999);
            imgName = "$random$imgName";
            print(imgName);

          });
        } else {print("NO img selected");}
      } catch (e) {print("Error => $e");}
    }
    showmodel() {
      return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(

            padding: EdgeInsets.all(22),
            height: 170,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () async {
                    await uploadImage2Screen(ImageSource.camera);
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.camera,
                        size: 20,
                      ),
                      SizedBox(
                        width: 11,
                      ),
                      Text(
                        "From Camera",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                GestureDetector(
                  onTap: () {
                    uploadImage2Screen(ImageSource.gallery);
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.photo_outlined,
                        size: 20,
                      ),
                      SizedBox(
                        width: 11,
                      ),
                      Text(
                        "From Gallery",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      );
    }


    return FutureBuilder<DocumentSnapshot>(
        future: users.doc('usemmm').get(),
    builder:
    (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
    if (snapshot.hasError) {
    return Text("Something went wrong");
    }

    if (snapshot.hasData && !snapshot.data!.exists) {
    return Text("Document does not exist");
    }

    if (snapshot.connectionState == ConnectionState.done) {
    Map<String, dynamic> data =
    snapshot.data!.data() as Map<String, dynamic>;

    return Scaffold(
    body: SafeArea(
    child: Padding(
    padding: const EdgeInsets.only(left: 30,right: 30),
    child: ListView(children: [
    SizedBox(height: 18,),
    Row(children: [
    Text('Profile',style: TextStyle(fontSize:16 ,fontWeight:FontWeight.w700,color: Color(0xff000000)),),
    Spacer(),

    Image.asset('asset/img_14.png',width: 24,height: 24,)
    ],),


      Container(
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromARGB(125, 78, 91, 110),),
        child: Center(
          child: Stack(
            children: [
              imgPath == null?
              Container(
                width: 100,
                height: 100,
                child: CircleAvatar(
                  backgroundColor:
                  Color.fromARGB(255, 225, 225, 225),
                  radius: 71,

                  backgroundImage: AssetImage("asset/img_37.png",),

                ),
              )
                  :
              ClipOval(
                child: Image.file(
                  imgPath!,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),


            ],
          ),
        ),
      ),











    SizedBox(height: 3,),
    Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Icon(Icons.carpenter_sharp,color: Color(0xffFB6B11),size: 10,),
    SizedBox(width: 3,),
    GestureDetector(
        onTap: (){

          setState(() {
            showmodel();
          });
        },

        child: Text('Edit profile',style: TextStyle(fontSize:10 ,fontWeight:FontWeight.w400 ,color: Color(0xffFB6B11)),)),
    ],
    ),
    SizedBox(height: 5,),
    Text('Hi there  nada !',style: TextStyle(fontSize:12 ,fontWeight:FontWeight.w500,color: Color(0xff000000)),),
    SizedBox(height: 5,),
    TextButton(
    onPressed: (){},
    child: Text('Sign Out',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w400,color: Color(0xffFF0D11)),


    ),),

    ],
    ),

    SizedBox(height: 18,),
    SizedBox(
    width: 340,
    height: 50,
    child: TextField(
    keyboardType: TextInputType.text,
    //obscureText: true,
    decoration: InputDecoration(
    filled: true,
    fillColor: Color(0xffDFDFDF),
    border:OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color:Color(0xffDFDFDF)),
    borderRadius: BorderRadius.circular(30),
    ),

    labelText: " ${data['username']} ",
    labelStyle: TextStyle(fontSize: 12,color: Color(0xffADA4A5),fontWeight: FontWeight.w400),

    ),
    ),
    ),
    SizedBox(height: 18,),
    SizedBox(
    width: 340,
    height: 50,
    child: TextField(
    keyboardType: TextInputType.text,
    //obscureText: true,
    decoration: InputDecoration(
    filled: true,
    fillColor: Color(0xffDFDFDF),
    border:OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color:Color(0xffDFDFDF)),
    borderRadius: BorderRadius.circular(30),
    ),

    labelText: " ${data['email']}",
    labelStyle: TextStyle(fontSize: 12,color: Color(0xffADA4A5),fontWeight: FontWeight.w400),

    ),
    ),
    ),

    SizedBox(height: 18,),
    SizedBox(
    width: 340,
    height: 50,
    child: TextField(
    keyboardType: TextInputType.text,
    //obscureText: true,
    decoration: InputDecoration(
    filled: true,
    fillColor: Color(0xffDFDFDF),
    border:OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color:Color(0xffDFDFDF)),
    borderRadius: BorderRadius.circular(30),
    ),

    labelText: " ${data['mobile']}",
    labelStyle: TextStyle(fontSize: 12,color: Color(0xffADA4A5),fontWeight: FontWeight.w400),

    ),
    ),
    ),

    SizedBox(height: 18,),
    SizedBox(
    width: 340,
    height: 50,
    child: TextField(
    keyboardType: TextInputType.number,
    obscureText: true,
    decoration: InputDecoration(
    filled: true,
    fillColor: Color(0xffDFDFDF),
    border:OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color:Color(0xffDFDFDF)),
    borderRadius: BorderRadius.circular(30),
    ),

    labelText: " ${data['pass']} ",
    labelStyle: TextStyle(fontSize: 12,color: Color(0xffADA4A5),fontWeight: FontWeight.w400),

    ),
    ),
    ),


    SizedBox(height: 18,),
    Container(
    width:293 ,
    height: 48,
    child: ElevatedButton(
    onPressed: (){},
    style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(const Color(0xffFB6B11)),
    padding: MaterialStateProperty.all(const EdgeInsets.all(8)),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
    ),
    child: const Text("Chek offers", style: TextStyle(fontSize: 12,color: Color(0xffFFFFFF),fontWeight: FontWeight.w500),),),
    ),


    ],),
    ),


    ),
    );
        }
        return Text("loading");

    },
    );
  }
}

