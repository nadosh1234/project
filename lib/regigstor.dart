import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:commerce3/showsnackbar.dart';
import 'package:commerce3/signup.dart';
import 'package:commerce3/log.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class log3 extends StatefulWidget {
  const log3({super.key});

  @override
  State<log3> createState() => _log3State();
}
bool isLoading = false;
bool isvisablity=true;
final _formKey = GlobalKey<FormState>();
final credential = FirebaseAuth.instance.currentUser;
String? imgName;
final usernameController = TextEditingController();
final AddressController = TextEditingController();
final  MobileController = TextEditingController();
final emailController = TextEditingController();
final passwordController = TextEditingController();
bool isPassword8Char = false;
bool isPasswordhas1number=false;
bool  Passwordhuppercase=false;
bool hasLowercase = false;
bool hasSpecialCharacters = false;

class _log3State extends State<log3> {
  @override
  //strong password
  onPasswordChanged(String password) {

    isPassword8Char = false;
    isPasswordhas1number=false;
    Passwordhuppercase=false;
    hasLowercase = false;
    hasSpecialCharacters = false;

    setState(() {
      if (password.contains(RegExp(r'.{8,}'))) {
        isPassword8Char = true;
      }
      if (password.contains(RegExp(r'[0-9]'))) {
        isPasswordhas1number = true;
      }
      if (password.contains(RegExp(r'[A-Z]'))) {
        Passwordhuppercase = true;
      }

      if (password.contains(  RegExp(r'[a-z]')     )) {
        hasLowercase = true;
      }

      if (password.contains( RegExp(r'[!@#$%^&*(),.?":{}|<>]')     )) {
        hasSpecialCharacters = true;
      }



    });
  }

  register() async {
    setState(() {
      isLoading = true;
    });

    try {
      final credential =
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password:  passwordController.text,
      );
      //
     // final storageRef = FirebaseStorage.instance.ref(imgName);
      //await storageRef.putFile(imgPath!);

      // String url = await storageRef.getDownloadURL();
      print(credential.user!.uid);


    }on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {

        showSnackBar(context, "The password provided is too weak.");
      } else if (e.code == 'email-already-in-use') {
        //print('The account already exists for that email.');
        showSnackBar(context, "The account already exists for that email.");
      }
      else
      {
        showSnackBar(context, 'ERROR - Please try again late');
      }
    }

    CollectionReference user = FirebaseFirestore.instance.collection('userrrs');
    user.doc('usemmm').set({
      //'imgLink':url,
      'username': usernameController.text,
      'mobile': MobileController.text,
      "adress": AddressController.text,
      "email": emailController.text,
      "pass":  passwordController.text,
    }).then((value) => print("User Added")).catchError((error) => print("Failed to add user: $error"));



    setState(() {
      isLoading = false;
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    usernameController.dispose();
    MobileController.dispose();
    AddressController.dispose();
    super.dispose();
  }//1234aA@1
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Form(
          key: _formKey,
          child: SafeArea(
            child: ListView(
              children: [
                const SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Text('Sign Up',style: TextStyle(fontSize:28 ,fontWeight: FontWeight.w500 ,color: Color(0xff000000)),),
                      Text('Please register now to get started  ',style: TextStyle(fontSize:16 ,fontWeight: FontWeight.w500 ,color: Color(0xffA6A6A6)),),

                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  width: 293,
                  height: 55,
                  child: TextFormField(
                    //controller: emailmyController,
                    controller: usernameController,
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    decoration: InputDecoration(
                      //suffixIcon: Icon(Icons.person),
                      labelText: 'Name ',
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
                SizedBox(height: 15,),

                Container(
                  width: 293,
                  height: 55,
                  child: TextFormField(
                    controller: MobileController,
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    decoration: InputDecoration(
                      //suffixIcon: Icon(Icons.back_hand_rounded),
                      labelText: "Mobile No",
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

                SizedBox(height: 15,),
                Container(
                  width: 293,
                  height: 55,
                  child: TextFormField(
                    controller: AddressController,
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    decoration: InputDecoration(
                      //suffixIcon: Icon(Icons.person_2_outlined),
                      labelText: "Address ",
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
                SizedBox(height: 15,),
                Container(
                  width: 293,
                  height: 90,
                  child: TextFormField(

                    // we return "null" when something is valid
                    validator: (email) {
                      return email!.contains(RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))  ? null: "Enter a valid email" ;
                    },

                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    decoration: InputDecoration(
                      // suffixIcon: Icon(Icons.email),
                      labelText: "Email ",
                      labelStyle:TextStyle(color: Color(0xffC8C8C8),fontWeight:FontWeight.w400,fontSize: 16) ,

                      filled: true,
                      fillColor: Color(0xffF5F5F5),
                      border:OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Color(0xffF5F5F5),),
                        borderRadius: BorderRadius.circular(50),
                      ),


                    ),
                  ),
                ),

                Container(
                  width: 293,
                  height: 90,
                  child: TextFormField(
                    onChanged: (password) {
                      onPasswordChanged(password);
                    },
                    validator: (value) {return value!.length < 8 ? "Enter at least 6 characters": null;},
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller:  passwordController,
                    keyboardType: TextInputType.text,
                    obscureText: isvisablity?true:false,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          isvisablity=!isvisablity;
                        });
                      }, icon: isvisablity?Icon(Icons.visibility):Icon(Icons.visibility_off_outlined)),
                      labelText: "password  ",
                      labelStyle:TextStyle(color: Color(0xffC8C8C8),fontWeight:FontWeight.w400,fontSize: 16) ,

                      filled: true,
                      fillColor: Color(0xffF5F5F5),
                      border:OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Color(0xffF5F5F5),),
                        // borderSide: BorderSide(color:Color(0xffDFDFDF)),
                        borderRadius: BorderRadius.circular(50),
                      ),


                    ),
                  ),
                ),

                Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 15,
                      ),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                        isPassword8Char ? Color(0xffFB6B11): Colors.white,
                        border: Border.all(
                            color: Color.fromARGB(255, 189, 189, 189)),
                      ),
                    ),
                    SizedBox(
                      width: 11,
                    ),
                    Text("At least 8 characters"),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 15,
                      ),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:   isPasswordhas1number ? Color(0xffFB6B11) : Colors.white,
                        border: Border.all(
                            color: Color.fromARGB(255, 189, 189, 189)),
                      ),
                    ),
                    SizedBox(
                      width: 11,
                    ),
                    Text("At least 1 number"),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 15,
                      ),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:  Passwordhuppercase ? Color(0xffFB6B11) : Colors.white,
                        border: Border.all(
                            color: Color.fromARGB(255, 189, 189, 189)),
                      ),
                    ),
                    SizedBox(
                      width: 11,
                    ),
                    Text("Has Uppercase"),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 15,
                      ),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: hasLowercase ? Color(0xffFB6B11) : Colors.white,
                        border: Border.all(
                            color: Color.fromARGB(255, 189, 189, 189)),
                      ),
                    ),
                    SizedBox(
                      width: 11,
                    ),
                    Text("Has  Lowercase "),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.check,
                        color:  Colors.white,
                        size: 15,
                      ),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: hasSpecialCharacters ? Color(0xffFB6B11): Colors.white,
                        border: Border.all(
                            color: Color.fromARGB(255, 189, 189, 189)),
                      ),
                    ),
                    SizedBox(
                      width: 11,
                    ),
                    Text("Has  Special Characters "),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(height: 20,),


                Container(
                  width:293 ,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: ()async {
                      if(_formKey.currentState!.validate()
                         )      {
                        await register();
                        Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => log2()),
                        );

                      }

                      else
                      {
                        showSnackBar(context, "error");
                      }
                    },

                    child: isLoading
                        ? CircularProgressIndicator(
                      color: Colors.white,
                    )
                        : Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 16,color: Color(0xffFFFFFF),fontWeight: FontWeight.w400),
                    ),

                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color(0xffFB6B11)),
                      padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                    ),
                  ),
                ),



                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an Account? ", style: TextStyle(fontSize: 16,color: Color(0xff747373),fontWeight: FontWeight.w400),),
                    TextButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  log2()),
                        );
                      },
                      child: Text(
                        'Login',style: TextStyle(fontSize: 16,color: Color(0xffFB6B11),fontWeight:  FontWeight.w400),),


                    ),
                  ],
                ),


              ],
            ),
          ),
        ),
      ),

    );
  }
}
