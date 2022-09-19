import 'package:clay_containers/constants.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:srap/common/common_styles.dart';
import 'package:srap/pages/purchase_order.dart';

import 'home_screen.dart';
import 'otp_screen.dart';

class ProfileScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0.0,
      //   title: Text("Profile"),
      // automaticallyImplyLeading: false,
      // actions: [
      //   TextButton.icon(onPressed: (){}, icon: Icon(Icons.edit), label: Text("Edit"))
      // ],),
      // backgroundColor: Colors.white,
      body: SingleChildScrollView(child: Container(
        child: Column(children: [
          // Text("uuuuuuuuuuuuu")
          // Padding(
          //   padding: const EdgeInsets.only(top: 35,left: 30),
          //   child: Row(children: [
          //     Text("Profile",style: CommonStyles.profText(),),
          //     SizedBox(width: 200,),
          //     TextButton.icon(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.black,), label: Text("Edit",style: TextStyle(color: Colors.black,),))
          //   ],),
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 1000,color: Colors.white,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35,left: 30),
                  child: Row(children: [
                    Text("Profile",style: CommonStyles.Bluelargetext(),),
                    SizedBox(width: 165,),
                    TextButton.icon(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.black,), label: Text("Edit",style: TextStyle(color: Colors.black,),))
                  ],),
                ),
// Image.asset("assets/profbaground.png"),
                Container(
                  decoration: BoxDecoration(image: DecorationImage(
                    image: AssetImage("assets/tealdesignb.png",),fit: BoxFit.fill)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 0),
                  child: Container(height: 100,
                    decoration: BoxDecoration(color:  Colors.white,
                        // image: DecorationImage(image: AssetImage("assets/profbaground.png")),
                        shape: BoxShape.circle,border: Border.all(color: Colors.teal.shade100,)),
                  ),
                ),),
                SizedBox(height: 10),
                Text("Joys Roselin",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                SizedBox(height: 3,),
                Text("+91 9449625560"),
SizedBox(height: 10,),
                // Container(height: 25,width: 60,alignment: Alignment.center,
                //     decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.circular(5)),
                //     child: Text("Buyer",style: TextStyle(fontSize: 16))),
                SizedBox(height: 10),
                Divider(thickness: 1,),
                Padding(
                  padding: const EdgeInsets.only(left: 5,right: 5),
                  child: ClayContainer(height: 158,spread: 1,
                    color:   Color(0XFFade6dd),
                    child: Column(children: [
                      ListTile(title:Text("Company Details"),
                        leading: Icon(Icons.co_present_sharp,color: Colors.black,),),
             Container(height: 50,
               color: Colors.white,
               child:  Row(children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 15,right: 40),
                   child: Icon(Icons.person,
                      color:  Colors.blueGrey
                     // color: Colors.blue.shade900,
                     ),
                 ),
                 Container(
                   child: Column(
                     children: [
                     SizedBox(height: 7.5,),
                   Padding(
                     padding: const EdgeInsets.only(right: 20),
                     child: Text("Company Name",),
                   ),
                   Text("ABC Techno pvt lmt",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500)),
                   SizedBox(height: 0.7),
                 ],),)
               ],), ),
SizedBox(height: 0.7,),
                      Container(height: 50,
                        color: Colors.white,
                        child:  Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15,right: 40),
                            child: Icon(Icons.mail,color: Colors.blueGrey),
                          ),
                          Container(
                            child: Column(
                              children: [
                                SizedBox(height: 7.5,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 120),
                                  child: Text("Email Id",),
                                ),
                                Text("ABCtechnopvtlmt@gmail.com",
                                    style: TextStyle(color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                                SizedBox(height: 0.7),
                              ],),)
                        ],), ),


                    ],)),
                ),

                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 5,right: 5),
                  child: ClayContainer(height: 169,spread: 1,
                      color:   Color(0XFFade6dd),
                      child: Column(children: [
                        ListTile(title: Text("Account Settings"),
                          leading: Icon(Icons.settings,color: Colors.black,),),
                        Container(color: Colors.white,
                          child:  ListTile(title:Text("Inbox"),
                            leading: Icon(Icons.mail,color: Colors.blueGrey,),),
                        ),SizedBox(height: 0.7),
                        Container(color: Colors.white,
                          child:  ListTile(title:Text("Tool"),
                            leading: Icon(Icons.pan_tool_alt_outlined,color: Colors.blueGrey),),
                        )
                      ],)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80,right: 80,top: 10),
                  child: ClayContainer(borderRadius: 10,
                    spread: 2,
                    depth: 50,
                    width: double.infinity,
                    curveType: CurveType.concave,
                    color:   Color(0XFF38c6b3),

                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PurchaseOrder()));
                    },
                      child: Row(children: [SizedBox(width: 30,),
                        Icon(Icons.logout,color: Colors.red,),SizedBox(width: 15,),
                        Text("LogOut",style: CommonStyles.loginText(),)
                      ],),),
                  ),
                ),



              ],),),
          )
        ],),
      ),)
    );
  }
}