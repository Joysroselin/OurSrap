import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:srap/common/common_styles.dart';
import 'package:srap/pages/login_screen.dart';

class SellBuyer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(child: Center(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Text("Are You a Scrap Seller? OR \n            Scrap Buyer? ".toUpperCase(),style: CommonStyles.greenlargetext(),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,bottom: 5,top: 40),
            child: ClayContainer(borderRadius: 10,

              child: Container(height: 180,
                decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(10)
              ,image: DecorationImage(image: AssetImage("assets/buyer.png",),fit: BoxFit.cover,)),

              ),
            ),
          ),
          Text("Buyer",style: CommonStyles.profText(),),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,bottom: 5),
            child: InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                },
              child: ClayContainer
                (borderRadius: 10,
                child: Container(height: 180,
                  decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(10),color: Colors.white
                      ,image: DecorationImage(image: AssetImage("assets/seller.png",),fit: BoxFit.cover,)),

                ),
              ),
            ),
          ),
          Text("Seller",style: CommonStyles.profText(),),
        ],),
      ),),
    );
  }
}