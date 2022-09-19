import 'package:clay_containers/constants.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:srap/pages/home_screen.dart';
import 'package:srap/pages/profile_screen.dart';

import '../common/clay_textfield.dart';
import '../common/common_styles.dart';
import 'otp_screen.dart';

class AccountSetup extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(child: Container(height: MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width,
        decoration: BoxDecoration(image: DecorationImage(image:
        AssetImage("assets/tealdesign.png"),fit: BoxFit.fill)),

        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(right: 80,top: 140,),
            // child: Container(color: Color(0XFF33E9ED),
            //     child: Text(" Welcome You Trader!!!",style: CommonStyles.Bluelargetext(),)),
          ),
          SizedBox(height: 10,),

          SizedBox(width: 320,
            child: Container(
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Column(children: [
                  Text("Now, it's time to set up \n       your Profile !",style: CommonStyles.profText(),),
                  Container(height: 90,

                    decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.black),color: Colors.white,
                        image: DecorationImage(image: AssetImage("assets/personic.png"
                        ))),),

                  Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: ClayTextFormField(
                    iconData: Icons.person,
                    hintText: 'Name.',

                  ),
                ),

                SizedBox(height: 5,),
                ClayTextFormField(iconData: Icons.mail,
                  hintText: 'Email.',),

                SizedBox(height: 5,),
                ClayTextFormField(iconData: Icons.location_on,
                  hintText: 'Location.',),


                  Padding(
                    padding: const EdgeInsets.only(left: 32,right: 32,top: 10),
                    child: ClayContainer(borderRadius: 10,
                      spread: 2,
                      depth: 50,
                      width: double.infinity,
                      curveType: CurveType.concave,
                      color: Color(0XFF38c6b3),

                      child: TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                      },
                        child: Text("Continue",style: CommonStyles.loginText(),),),
                    ),
                  ),

            ],),
              ),),
          ),


        ],),
      ),),

    );

  }
}