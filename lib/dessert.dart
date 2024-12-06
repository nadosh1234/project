import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';


class dessret extends StatelessWidget {
  const dessret({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        //key: _bottomNavigationKey,

        items: [
          CurvedNavigationBarItem(

              child: Icon(Icons.menu,color: Colors.white,size: 30,),
              label: 'Menu',
              labelStyle: TextStyle(color: Colors.white)

          ),
          CurvedNavigationBarItem(
              child: Icon(Icons.local_offer_outlined,color: Colors.white,size: 30,),
              label: 'Offers',
              labelStyle: TextStyle(color: Colors.white)
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.home,color: Colors.white,size: 30,),
            label: '',
          ),
          CurvedNavigationBarItem(
              child: Icon(Icons.person,color: Colors.white,size: 30,),
              label: 'Profile',
              labelStyle: TextStyle(color: Colors.white)
          ),
          CurvedNavigationBarItem(
              child: Icon(Icons.more,color: Colors.white,size: 25,),
              label: 'More',
              labelStyle: TextStyle(color: Colors.white)
          ),
        ],
        color: Colors.orange,
        buttonBackgroundColor: Colors.orange,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {

        },
        letIndexChange: (index) => true,
      ),
      body: SafeArea(
        child: ListView(children: [
          SizedBox(height: 20,),
          Row(children: [
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
                child: Icon(Icons.arrow_left_outlined,size: 30,color: Color(0xff000000),)),
            //SizedBox(width: 2,),
            Text('Desserts',style: TextStyle(fontSize:18 ,fontWeight:FontWeight.w700,color: Color(0xff000000)),),
            Spacer(),
            Image.asset('asset/img_14.png',width: 24,height: 24,),


          ],),
          SizedBox(height: 20,),


          Container(
            decoration: BoxDecoration(
              color: Color(0xffE2E2E2),
              borderRadius: BorderRadius.circular(30),

            ),

            child: SizedBox(
              width: 344,
              height: 48,
              child: TextField(

                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: InputDecoration(
                  border:OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:Color(0xffE2E2E2)),
                    borderRadius: BorderRadius.circular(30),
                  ),

                  hintText: "Search Food",
                  hintStyle: TextStyle(fontSize: 14,color: Color(0xffA4A4A4),fontWeight: FontWeight.w400),
                  prefixIcon: Icon(Icons.search,color: Color(0xff8D8B8B),size: 24,),

                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Stack(
            children: [
              Positioned(
                //top: 200,
                // right: //left: 0,
                child: Image.asset(
                  'asset/img_23.png',
                  fit: BoxFit.cover,
                  width: 375,
                  height: 152,
                ),
              ),
              Positioned(
                // top: 294,
                  left: 12,
                  bottom: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(

                      children: [
                        Text('French Apple Pie ',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w700 ,color:Color( 0xffFFFFFF) ),),
                        Row(
                          children: [
                            Icon(Icons.star,color:Color( 0xffFB6B11),size: 20,),
                            SizedBox(width: 3,),
                            Text('4.9',style: TextStyle(fontSize:12 ,fontWeight:FontWeight.w500 ,color:Color( 0xffFB6B11) ),),
                            Text('  Minute by tuk tuk          Dessert',style: TextStyle(fontSize:10 ,fontWeight:FontWeight.w400 ,color:Color( 0xffFFFFFF) ),),
                          ],
                        )
                      ],
                    ),
                  )
              ),
            ],
          ),
          SizedBox(height: 20,),
          Stack(
            children: [
              Positioned(
                //top: 200,
                // right: //left: 0,
                child: Image.asset(
                  'asset/img_24.png',
                  fit: BoxFit.cover,
                  width: 375,
                  height: 152,
                ),
              ),
              Positioned(
                // top: 294,
                  left: 12,
                  bottom: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(

                      children: [
                        Text('Dark Chocolate cake',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w700 ,color:Color( 0xffFFFFFF) ),),
                        Row(
                          children: [
                            Icon(Icons.star,color:Color( 0xffFB6B11),size: 20,),
                            SizedBox(width: 3,),
                            Text('4.9',style: TextStyle(fontSize:12 ,fontWeight:FontWeight.w500 ,color:Color( 0xffFB6B11) ),),
                            Text('Cakes by tela          Dessert',style: TextStyle(fontSize:10 ,fontWeight:FontWeight.w400 ,color:Color( 0xffFFFFFF) ),),
                          ],
                        )
                      ],
                    ),
                  )
              ),
            ],
          ),
          SizedBox(height: 20,),
          Stack(
            children: [
              Positioned(
                //top: 200,
                // right: //left: 0,
                child: Image.asset(
                  'asset/img_25.png',
                  fit: BoxFit.cover,
                  width: 375,
                  height: 152,
                ),
              ),
              Positioned(
                // top: 294,
                  left: 12,
                  bottom: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(

                      children: [
                        Text('Street Shake',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w700 ,color:Color( 0xffFFFFFF) ),),
                        Row(
                          children: [
                            Icon(Icons.star,color:Color( 0xffFB6B11),size: 20,),
                            SizedBox(width: 3,),
                            Text('4.9',style: TextStyle(fontSize:12 ,fontWeight:FontWeight.w500 ,color:Color( 0xffFB6B11) ),),
                            Text('Cafe raser         Dessert',style: TextStyle(fontSize:10 ,fontWeight:FontWeight.w400 ,color:Color( 0xffFFFFFF) ),),
                          ],
                        )
                      ],
                    ),
                  )
              ),
            ],
          ),
          SizedBox(height: 20,),
          Stack(
            children: [
              Positioned(
                //top: 200,
                // right: //left: 0,
                child: Image.asset(
                  'asset/img_27.png',
                  fit: BoxFit.cover,
                  width: 375,
                  height: 152,
                ),
              ),
              Positioned(
                // top: 294,
                  left: 12,
                  bottom: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(

                      children: [
                        Text('Fudgy chew brownies ',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w700 ,color:Color( 0xffFFFFFF) ),),
                        Row(
                          children: [
                            Icon(Icons.star,color:Color( 0xffFB6B11),size: 20,),
                            SizedBox(width: 3,),
                            Text('4.9',style: TextStyle(fontSize:12 ,fontWeight:FontWeight.w500 ,color:Color( 0xffFB6B11) ),),
                            Text('  Cafe raser         Dessert ',style: TextStyle(fontSize:10 ,fontWeight:FontWeight.w400 ,color:Color( 0xffFFFFFF) ),),
                          ],
                        )
                      ],
                    ),
                  )
              ),
            ],
          ),





        ],),
      ),


    );
  }
}
