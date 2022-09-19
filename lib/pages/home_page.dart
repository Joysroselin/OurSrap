import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:srap/common/common_styles.dart';
import 'package:srap/pages/purchase_order.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List <String> sellName=["Paper",
  "E-waste",
  "Plastic",
  "Bottles",
  "Car",
  "Metals"];
  List <String> purchaseName=[
    "Car",
    "Bottles",
    "Metals",
    "Plastic",
    "E-waste",
    "Paper",
  ];

  List<String> sellitem=[
    "assets/news.png",
    "assets/ewastes.png",
    "assets/plastics.png",
    "assets/glassbottles.png",
    "assets/cars.png",
    "assets/metal.png",

  ];
  List<String> purchaseitem=[
    "assets/metal.png",
    "assets/cars.png",
    "assets/glassbottles.png",
    "assets/plastics.png",
    "assets/ewastes.png",
    "assets/news.png",

  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:


      SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Stack(children: [


              Container(height: 290,decoration: BoxDecoration(gradient: LinearGradient(colors: [
                 Colors.white,
                Color(0XFF38c6b3),


                Color(0XFF38c6b3),
                // Colors.teal,

              ],begin: Alignment.topCenter,
                end: Alignment.bottomCenter,),
                  // image: DecorationImage(image: AssetImage("assets/tealban.png"),fit: BoxFit.cover)
              ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30,left: 10),
                    child: Column(
                      children: [
                        Row(children: [
                          Icon(Icons.location_on,color: Colors.deepOrangeAccent,),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Column(children: [
          Text("Your City"),
                              Text("Bangalore",style: CommonStyles.black13Thin(),)
                            ],),
                          ),
                          SizedBox(width: 220,),
                          Icon(Icons.note_add_outlined,),

                        ],
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(height: 40,
                            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)),
                            child: TextFormField(
                              decoration: InputDecoration(prefixIcon: Icon(Icons.search),
                                enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                            hintText: "Search",
                            ),

                            ),
                          ),
                        )
                      ],
                    ),
                  ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 265,left: 0,right: 0),
                child:CarouselSlider(
                  items: [

                    //1st Image of Slider
                    Container(
                      // margin: EdgeInsets.all(0.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("assets/scrapban.png",),
                           fit: BoxFit.fill,
                        ),
                      ),
                    ),

                    //2nd Image of Slider
                    Container(
                      margin: EdgeInsets.all(0.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),color: Colors.white,
                        // image: DecorationImage(
                        //   image: AssetImage("assets/buyer.png"),
                        //   fit: BoxFit.fill,
                        // ),
                      ),

                    ),

                    //3rd Image of Slider
                    Container(
                      margin: EdgeInsets.all(0.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("assets/bana.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),

                    //4th Image of Slider
                    Container(
                      margin:EdgeInsets.all(0.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("assets/buyer.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),

                    //5th Image of Slider
                    // ClayContainer(color:Color(0xFF94C120),
                    //
                    //   spread: 2,
                    //   emboss: true,
                    //   borderRadius: 20,
                    //   depth: 120,
                    //   child: Container(
                    //     margin: EdgeInsets.all(4),
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(12),color: Colors.white,
                    //       image: DecorationImage(
                    //         image: AssetImage("assets/bannerD.jpg"),
                    //         fit: BoxFit.cover,
                    //       ),
                    //     ),
                    //   ),
                    // ),

                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                    height: 100.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
              )
            ],),
            // Container(child: Padding(
            //   padding: const EdgeInsets.only(top: 20,left: 10),
            //   child: Text("Sell For Cash",style: CommonStyles.blackloginText(),),
            // ),),
    //       ListView.builder(itemCount: 5,
    //
    //       itemBuilder: (context,index){return Container(height: 50,
    //         child: Column(children: [
    //         Text("Plastic sell")
    // ],),);}
    //       ),
            Padding(
              padding: const EdgeInsets.only(left: 5,top: 20),
              child: Container(child: Text("Sell and Earn Cash",style:TextStyle(fontSize: 19,fontWeight: FontWeight.w500),)),
            ),
            SizedBox(height: 120,
              child: Expanded(
                child:     ListView.builder(itemCount: purchaseitem.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          InkWell(onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>PurchaseOrder()));
                          },
                            child: Container(
                              decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0XFFade6dd).withOpacity(0.3),),
                              width: 70,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Column(children: [
                                  Image.asset("${purchaseitem[index]}",height: 70,width: 100,),
                                  SizedBox(height: 10,),

                                ],),
                              ),
                            ),
                          ),
                          Text("${purchaseName[index]}",style: TextStyle(color: Colors.grey.shade700),)
                        ],
                      ),
                    );}
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5,top: 10),
              child: Container(child: Text("Purchase",style:TextStyle(fontSize: 19,fontWeight: FontWeight.w500),)),
            ),

            SizedBox(height: 120,
              child: Expanded(
                child: ListView.builder(itemCount: sellitem.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0XFFade6dd).withOpacity(0.3),),
                            width: 70,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(children: [
                                Image.asset("${sellitem[index]}",height: 70,width: 100,),
                                SizedBox(height: 10,),

                              ],),
                            ),
                          ),
                          Text("${sellName[index]}",style: TextStyle(color: Colors.grey.shade700),)
                        ],
                      ),
                    );}
                ),),
            )
             ],
        ),
      ),

    );
  }
}