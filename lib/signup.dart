import 'package:commerce3/home.dart';
import 'package:commerce3/regigstor.dart';
import 'package:commerce3/resetpassword.dart';
import 'package:commerce3/showsnackbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'onboarding1.dart';



class log2 extends StatefulWidget {

  const log2({super.key});

  @override
  State<log2> createState() => _log2State();
}

class _log2State extends State<log2> {


  @override
  final emailmyController = TextEditingController();

  final passwordmyController = TextEditingController();
  bool isloading=false;
  bool isvisablity=false;
  signup()async
  {
    setState(() {
      isloading=true;
    });
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailmyController.text,
        password: passwordmyController.text,
      );
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => on1()));

      // showSnackBar(context, 'done');
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, '${e.code}');


    }
    setState(() {
      isloading=false;
    });
  }


  @override
  void dispose() {
    emailmyController.dispose();
    passwordmyController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: ListView(

            children: [
              const SizedBox(height: 30,),
              Container(
                width: double.infinity,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Text('Login',style: TextStyle(fontSize:28 ,fontWeight: FontWeight.w500 ,color: Color(0xff000000)),),
                    Text('Please login with your account to continue',style: TextStyle(fontSize:16 ,fontWeight: FontWeight.w500 ,color: Color(0xffA6A6A6)),),

                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                // margin: EdgeInsets.symmetric(vertical: 100),
                padding: EdgeInsets.only(left: 30),
                decoration: BoxDecoration(
                    color: const Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(30)),
                width: 293,
                height: 48,
                child:  TextField(
                    controller: emailmyController,
                    keyboardType: TextInputType.emailAddress,
                   // obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Your Email ",
                      hintStyle: TextStyle(fontSize: 16,fontWeight:FontWeight.w400,color: Color(0xffC8C8C8),),
                      //prefixIcon: Icon(Icons.lock,color: Color(0xffADA4A5),size: 15,),
                      // suffixIcon: Icon(Icons.visibility,color: Color(0xffADA4A5),size: 15,)
                    )
                ),),
              const SizedBox(height: 20,),
              Container(
                // margin: EdgeInsets.symmetric(vertical: 100),
                padding: EdgeInsets.only(left: 30),
                decoration: BoxDecoration(
                    color: const Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(30)),
                width: 293,
                height: 48,
                child:  TextField(
                    controller: passwordmyController,
                    keyboardType: TextInputType.text,
                    obscureText:isvisablity?true:false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle: TextStyle(fontSize: 16,fontWeight:FontWeight.w400,color: Color(0xffC8C8C8),),
                      suffixIcon: IconButton(onPressed:(){
                        setState(() {
                          isvisablity=!isvisablity;
                        });


                      }, icon: isvisablity?Icon(Icons.visibility):Icon(Icons.visibility_off_outlined)),
                      //prefixIcon: Icon(Icons.lock,color: Color(0xffADA4A5),size: 15,),
                      // suffixIcon: Icon(Icons.visibility,color: Color(0xffADA4A5),size: 15,)
                    )
                ),),
              const SizedBox(height: 5,),
              Container(
                  padding: EdgeInsets.only(left: 50),
                  width:double.infinity,child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  log4()),
                  );
                },

                  child: Text('Forget your password?',textAlign:TextAlign.start,style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w400 ,color: Color(0xff858585)),))),
              const SizedBox(height: 40,),
              Container(
                width:293 ,
                height: 48,
                child: ElevatedButton(
                  onPressed: ()async{
                    await signup();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xffFB6B11)),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                  ),

                  child: isloading
                      ? CircularProgressIndicator(
                    color: Colors.white,
                  )

                  : Text("Login", style: TextStyle(fontSize: 16,color: Color(0xffFFFFFF),fontWeight: FontWeight.w400),),),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Color(0xff747373),
                        thickness: 1,
                        height: 1,
                        indent: 5,
                        endIndent: 8,


                      ),
                    ),
                    Center(child: Text('OR',style: TextStyle(color:Color(0xff747373),fontSize: 18,fontWeight: FontWeight.w400)),),
                    Expanded(
                      child: Divider(
                        color: Color(0xff747373),
                        thickness: 1,
                        height: 1,
                        indent: 5,
                        endIndent: 8,


                      ),
                    ),



                  ],
                ),
              ),


              GestureDetector(
                onTap: () {
                  setState(() {
                    // googleSignInProvider.googlelogin();
                  });
                },
                child: Container(
                  width: 100,
                  padding: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.black12,
                          //color: Color.fromARGB(255, 200, 67, 79),
                          width: 1)),
                  child: Image.asset(
                    "asset/google.png",

                    height: 55,
                  ),
                ),
              ),
              Spacer(),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t have an Account?", style: TextStyle(fontSize: 16,color: Color(0xff747373),fontWeight: FontWeight.w400),),
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const log3()),
                      );
                    },
                    child: Text(
                      'Sign Up',style: TextStyle(fontSize: 16,color: Color(0xffFB6B11),fontWeight:  FontWeight.w400),),


                  ),
                ],
              ),




            ],
          ),
        ),
      ),
    );
  }
}
