// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
//
// import 'menu_page.dart';
//
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   // MyHomePage({Key key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   void initState() {
//     //set time to load the new page
//     Future.delayed(Duration(seconds: 2), () {
//       Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (context) => Menu()));
//     });
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Container(
//         alignment: Alignment.center,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//                 height: 300,
//                 width: 300,
//                 child:  SizedBox(height: 20),
//
//             )],
//         ),
//       ),
//     );
//   }
// }


import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:srap/pages/home_screen.dart';
import 'package:srap/pages/order_status.dart';
import 'package:srap/pages/otp_screen.dart';
import 'package:srap/pages/stepper.dart';

import '../common/clay_textfield.dart';
import '../common/common_styles.dart';
import 'account_setup_screen.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Container(height: 750,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/tA.png"),fit: BoxFit.cover)),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(right: 100,top: 150),
            child: Text("Welcome To Scrap!!",style: CommonStyles.BlueBlargetext(),),
          ),


         Container(width: 700,height: 500,
           // decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/tB.png"),fit: BoxFit.contain)),
           child: Padding(
             padding: const EdgeInsets.only(left: 0,right: 0,top: 60),
             child: Column(children: [
               // SizedBox(height: 23,),
               Text("Now, it's time to set up \n       your account !",style: CommonStyles.profText(),),
               Container(height: 80,
                 decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.black),
                     image: DecorationImage(image: AssetImage("assets/personic.png"
                     ))
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 50),
                 child: ClayTextFormField(
                   iconData: Icons.person,
                   hintText: 'Name.',

                 ),
               ),

               SizedBox(height: 5,),
               ClayTextFormField(iconData: Icons.phone_android,
                 hintText: 'Phone no.',),

               Padding(
                 padding: const EdgeInsets.only(left: 32,right: 32,top: 10),
                 child: ClayContainer(borderRadius: 10,
                   spread: 2,
                   depth: 50,
                   width: double.infinity,
                   curveType: CurveType.concave,
                   color: Color(0XFF38c6b3),

                   child: TextButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
                   },
                     child: Text("Login",style: CommonStyles.loginText(),),),
                 ),
               ),



             ],),
           ),
         ),


        ],),
      ),),

    );

  }
}