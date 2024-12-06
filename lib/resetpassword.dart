


import 'package:commerce3/showsnackbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'log.dart';
import 'signup.dart';

class log4 extends StatefulWidget {
  log4({super.key});




  @override
  State<log4> createState() => _log4State();

}


class _log4State extends State<log4>{
  final emailmyController = TextEditingController();
  bool isloading=false;
  final _formKey = GlobalKey<FormState>();
  @override
  forgetpassword()async
  {
    setState(() {
      isloading=true;
    });
    try {

      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailmyController.text);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => log2()),
      );


      // showSnackBar(context, 'done');
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, '${e.code}');


    }

  }

  void dispose() {
    emailmyController.dispose();

    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SafeArea(
          child: Column(

            children: [
              const SizedBox(height: 30,),
              Container(
                width: double.infinity,
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Text('Reset Password',style: TextStyle(fontSize:28 ,fontWeight: FontWeight.w500 ,color: Color(0xff000000)),),
                    Text('Please enter your email to receive a link to create a new password via email',maxLines:2,textAlign:TextAlign.center,style: TextStyle(fontSize:16 ,fontWeight: FontWeight.w500 ,color: Color(0xffA6A6A6)),),



                  ],
                ),
              ),
              const SizedBox(height: 40,),
              Container(
                padding: EdgeInsets.only(left: 30),
                decoration: BoxDecoration(
                    color: const Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(30)),
                width: 293,
                height: 48,
                child: TextFormField(

                  // we return "null" when something is valid
                  validator: (email) {
                    return email!.contains(RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))  ? null: "Enter a valid email" ;
                  },

                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: emailmyController,
                  //autofocus: true,
                  keyboardType: TextInputType.emailAddress,

                  //obscureText: false,
                  decoration: InputDecoration(
                    //suffixIcon: Icon(Icons.person_2_outlined),
                    labelText: "Email",
                    labelStyle:TextStyle(color: Color(0xffC8C8C8),fontWeight:FontWeight.w400,fontSize: 16) ,

                    filled: true,
                    fillColor: Color(0xffF5F5F5),
                    border:OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:Color(0xffF5F5F5),),
                      //borderSide: BorderSide(color:Color(0xffDFDFDF)),
                      borderRadius: BorderRadius.circular(30),
                    ),


                  ),
                ),
              ),

              const SizedBox(height: 30,),
              Container(
                width:293 ,
                height: 48,
                child: ElevatedButton(
                  onPressed: () async{
                    if(_formKey.currentState!.validate()     ) {

                      forgetpassword();

                    }
                    else
                    {
                      showSnackBar(context, "error");
                    }
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
                      :  Text("Send", style: TextStyle(fontSize: 16,color: Color(0xffFFFFFF),fontWeight: FontWeight.w400),),),
              ),

            ],
          ),
        ),
      ),




    );
  }
}
