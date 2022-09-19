import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:srap/pages/account_setup_screen.dart';

class OtpScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(" OTP Verification"),
      backgroundColor: Colors.white,
      elevation: 0.0,),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50,bottom: 5),
            child: Text("Enter the Verification Code"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,bottom: 60),
            child:



            Container(child:
            OtpTextField(
              numberOfFields: 5,
              borderColor: Colors.blue.shade600,
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    }
                );
              }, // end onSubmit
            ),),
          ),
          Container(width: 130,
            decoration: BoxDecoration(color: Colors.blue.shade600,borderRadius: BorderRadius.circular(10)),
            child: TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AccountSetup()));
                },
                child: Text("Verify",style: TextStyle(color: Colors.white,fontSize: 19),)),
          )
        ],
      ),
    );
  }
}