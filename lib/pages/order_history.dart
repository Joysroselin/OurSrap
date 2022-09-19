import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:srap/common/common_styles.dart';

class OrderHistoryScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(body:
      SingleChildScrollView(child:
      Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 60,bottom: 10),
          child: Text("Order History",style: CommonStyles.Bluelargetext(),),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClayContainer(color: Color(0XFFade6dd),

              spread: 1, child:
          Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(height: 38,
                child: Row(children: [
                  Text("Type Of Scrap",style: CommonStyles.black13Thin(),),SizedBox(width: 170,),
                  Text("E-waste",style: CommonStyles.black13Thin(),)
                ],),
              ),
            ),
            Container(color: Colors.white,
            height: 50,
            child:Padding(
              padding: const EdgeInsets.only(left: 10,top: 5),
              child: Row(
                children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Color Of Scrap",),
                  SizedBox(height:5,),
                  Text("Black",style: CommonStyles.black14(),),
                  // SizedBox(width: 45,),
                  // Text("Date",),
                ],),
                SizedBox(height: 7,),

                Expanded(
                  child: Column(
                    children: [
                    // SizedBox(width: 15,),
                    Text("Quantity",),
                     SizedBox(height:5,),
                    Text("20 Kg",style: CommonStyles.black14(),),
                    // SizedBox(width: 80,),
                    // Text("20 Mar 2022",style: CommonStyles.black14(),)
                  ],),
                ),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SizedBox(width: 15,),
                      Text("Date",),
                      SizedBox(height:5,),
                      Text("20 Mar 2022",style: CommonStyles.black14(),)
                      // SizedBox(width: 80,),
                      // Text("20 Mar 2022",style: CommonStyles.black14(),)
                    ],),
              ],),
            ))
          ],)),
        ),



        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClayContainer(color: Color(0XFFade6dd),

              spread: 1, child:
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(height: 38,
                    child: Row(children: [
                      Text("Type Of Scrap",style: CommonStyles.black13Thin(),),SizedBox(width: 170,),
                      Text("E-waste",style: CommonStyles.black13Thin(),)
                    ],),
                  ),
                ),
                Container(color: Colors.white,
                    height: 50,
                    child:Padding(
                      padding: const EdgeInsets.only(left: 10,top: 5),
                      child: Row(
                        children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Color Of Scrap",),
                              SizedBox(height:5,),
                              Text("Black",style: CommonStyles.black14(),),
                              // SizedBox(width: 45,),
                              // Text("Date",),
                            ],),
                          SizedBox(height: 7,),

                          Expanded(
                            child: Column(
                              children: [
                                // SizedBox(width: 15,),
                                Text("Quantity",),
                                SizedBox(height:5,),
                                Text("20 Kg",style: CommonStyles.black14(),),
                                // SizedBox(width: 80,),
                                // Text("20 Mar 2022",style: CommonStyles.black14(),)
                              ],),
                          ),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // SizedBox(width: 15,),
                              Text("Date",),
                              SizedBox(height:5,),
                              Text("20 Mar 2022",style: CommonStyles.black14(),)
                              // SizedBox(width: 80,),
                              // Text("20 Mar 2022",style: CommonStyles.black14(),)
                            ],),
                        ],),
                    ))
              ],)),
        ),



    SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClayContainer(color: Color(0XFFade6dd),
              spread: 1,
              child:
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(height: 38,
                    child: Row(children: [
                      Text("Type Of Scrap",style: CommonStyles.black13Thin(),),SizedBox(width: 170,),
                      Text("E-waste",style: CommonStyles.black13Thin(),)
                    ],),
                  ),
                ),
                Container(color: Colors.white,
                    height: 50,
                    child:Padding(
                      padding: const EdgeInsets.only(left: 10,top: 5),
                      child: Row(
                        children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Color Of Scrap",),
                              SizedBox(height:5,),
                              Text("Black",style: CommonStyles.black14(),),
                              // SizedBox(width: 45,),
                              // Text("Date",),
                            ],),
                          SizedBox(height: 7,),

                          Expanded(
                            child: Column(
                              children: [
                                // SizedBox(width: 15,),
                                Text("Quantity",),
                                SizedBox(height:5,),
                                Text("20 Kg",style: CommonStyles.black14(),),
                                // SizedBox(width: 80,),
                                // Text("20 Mar 2022",style: CommonStyles.black14(),)
                              ],),
                          ),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // SizedBox(width: 15,),
                              Text("Date",),
                              SizedBox(height:5,),
                              Text("20 Mar 2022",style: CommonStyles.black14(),)
                              // SizedBox(width: 80,),
                              // Text("20 Mar 2022",style: CommonStyles.black14(),)
                            ],),
                        ],),
                    ))
              ],)),
        ),



        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClayContainer(color: Color(0XFFade6dd),

              spread: 1,  child:
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(height: 38,
                    child: Row(children: [
                      Text("Type Of Scrap",style: CommonStyles.black13Thin(),),SizedBox(width: 170,),
                      Text("E-waste",style: CommonStyles.black13Thin(),)
                    ],),
                  ),
                ),
                Container(color: Colors.white,
                    height: 50,
                    child:Padding(
                      padding: const EdgeInsets.only(left: 10,top: 5),
                      child: Row(
                        children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Color Of Scrap",),
                              SizedBox(height:5,),
                              Text("Black",style: CommonStyles.black14(),),
                              // SizedBox(width: 45,),
                              // Text("Date",),
                            ],),
                          SizedBox(height: 7,),

                          Expanded(
                            child: Column(
                              children: [
                                // SizedBox(width: 15,),
                                Text("Quantity",),
                                SizedBox(height:5,),
                                Text("20 Kg",style: CommonStyles.black14(),),
                                // SizedBox(width: 80,),
                                // Text("20 Mar 2022",style: CommonStyles.black14(),)
                              ],),
                          ),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // SizedBox(width: 15,),
                              Text("Date",),
                              SizedBox(height:5,),
                              Text("20 Mar 2022",style: CommonStyles.black14(),)
                              // SizedBox(width: 80,),
                              // Text("20 Mar 2022",style: CommonStyles.black14(),)
                            ],),
                        ],),
                    ))
              ],)),
        ),

        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClayContainer(color: Color(0XFFade6dd),

              spread: 1, child:
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(height: 38,
                    child: Row(children: [
                      Text("Type Of Scrap",style: CommonStyles.black13Thin(),),SizedBox(width: 170,),
                      Text("E-waste",style: CommonStyles.black13Thin(),)
                    ],),
                  ),
                ),
                Container(color: Colors.white,
                    height: 50,
                    child:Padding(
                      padding: const EdgeInsets.only(left: 10,top: 5),
                      child: Row(
                        children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Color Of Scrap",),
                              SizedBox(height:5,),
                              Text("Black",style: CommonStyles.black14(),),
                              // SizedBox(width: 45,),
                              // Text("Date",),
                            ],),
                          SizedBox(height: 7,),

                          Expanded(
                            child: Column(
                              children: [
                                // SizedBox(width: 15,),
                                Text("Quantity",),
                                SizedBox(height:5,),
                                Text("20 Kg",style: CommonStyles.black14(),),
                                // SizedBox(width: 80,),
                                // Text("20 Mar 2022",style: CommonStyles.black14(),)
                              ],),
                          ),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // SizedBox(width: 15,),
                              Text("Date",),
                              SizedBox(height:5,),
                              Text("20 Mar 2022",style: CommonStyles.black14(),)
                              // SizedBox(width: 80,),
                              // Text("20 Mar 2022",style: CommonStyles.black14(),)
                            ],),
                        ],),
                    ))
              ],)),
        ),

      ],) )
    );
  }
}