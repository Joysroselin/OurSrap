import 'package:clay_containers/constants.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:srap/common/common_styles.dart';

import 'number_stepper.dart';


class PurchaseOrder extends StatefulWidget{
  @override
  State<PurchaseOrder> createState() => _PurchaseOrderState();
}

class _PurchaseOrderState extends State<PurchaseOrder> {
  final List<String> items = [
    'Papers',
    'Metals',
    'Copper',
    'Plastic',
    'Select the Type of Scrap'
  ];
  String? selectedItem='Select the Type of Scrap';

  final List<String> itemcolor = [
    'pink',
    'black',
    'silver',
    'red',
    'Color of Scrap'
  ];
  String? selecteditemcolor='Color of Scrap';

  final List<String> itemwashtype = [

    'unwashed',
    'washed',
    'wash type'
  ];
  String? selecteditemwashtype='wash type';



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(child: Column(children: [
        // Padding(
        //   padding: const EdgeInsets.only(right: 170,top: 200),
        //   child: Container(child: Text("Available at Locations:",style: TextStyle(color:
        //   Colors.cyan),)),
        // ),
        Padding(
          padding: const EdgeInsets.only(top: 80,left: 15,right: 15,),
          child: Container(
            decoration: BoxDecoration(boxShadow: [
            BoxShadow(color:  Color(0XFF38c6b3),
            offset: Offset(4,4),
            blurRadius: 3,
            spreadRadius: 1),
            BoxShadow(color: Color(0XFF38c6b3),
                offset: Offset(-4,-4),
                blurRadius: 3,
                spreadRadius: 2)
          ],borderRadius: BorderRadius.circular(10)),
            child: ClayContainer(borderRadius: 10,
              color: Colors.white,
              // surfaceColor: Color(0xFF94C120).withOpacity(0.2),
              child:Column(children: [
                SizedBox(height: 20,),
              Text("Purchase Order",style: CommonStyles.Bluelargetext(),),
            Image.asset("assets/purchasesym.png",scale: 13,),

            Padding(
             padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
             child: Container(height: 40,
                 child:
                 DropdownButtonHideUnderline(
                 child: SizedBox(width: 350,
                   child: DropdownButton2(
               isExpanded: true,
    // hint: Row(
    // children: const [
    // Icon(
    // Icons.list,
    // size: 16,
    // color: Colors.yellow,
    // ),
    // SizedBox(
    // width: 4,
    // ),
    // Expanded(
    // child: Text(
    // 'Select Item',
    // style: TextStyle(
    // fontSize: 14,
    // fontWeight: FontWeight.bold,
    // color: Colors.black,
    // ),
    // overflow: TextOverflow.ellipsis,
    // ),
    // ),
    // ],
    // ),
    items: items
            .map((item) => DropdownMenuItem<String>(
    value: item,
    child: Text(
    item,
    style: const TextStyle(
    fontSize: 14,
    // fontWeight: FontWeight.bold,
    color: Colors.black,
    ),
    overflow: TextOverflow.ellipsis,
    ),
    ))
            .toList(),
    value: selectedItem,
    onChanged: (value) {
    setState(() {
    selectedItem = value as String;
    });
    },

    icon: const Icon(
    Icons.arrow_drop_down,
    ),
    iconSize: 25,
    iconEnabledColor:  Color(0XFF38c6b3),
    // iconDisabledColor: Colors.grey,
    buttonHeight: 50,
    buttonWidth: 160,
    buttonPadding: const EdgeInsets.only(left: 14, right: 14),
    buttonDecoration: BoxDecoration(
    borderRadius: BorderRadius.circular(14),
    border: Border.all(
    color: Colors.black26,
    ),
    // color: Colors.redAccent,
    ),
    buttonElevation: 0,
    itemHeight: 40,
    itemPadding: const EdgeInsets.only(left: 14, right: 14),
    dropdownMaxHeight: 350,
    dropdownWidth: 350,
    dropdownPadding: null,
    dropdownDecoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    // color: Colors.blue.shade900,
    //   border: Border.all(color: Colors.blue)
    ),
    dropdownElevation: 2,
    scrollbarRadius: const Radius.circular(40),
    scrollbarThickness: 6,
    scrollbarAlwaysShow: true,
    offset: const Offset(-20, 0),
    ),
                 ),
    ),
    ),
    ),

    Padding(
      padding: const EdgeInsets.only(top: 13,left: 20,right: 20),
      child: Container(height: 40,
      child:
      DropdownButtonHideUnderline(
      child: SizedBox(width: 350,
      child: DropdownButton2(
      isExpanded: true,
            items: itemcolor
               .map((item) => DropdownMenuItem<String>(
             value: item,
             child: Text(
               item,
               style: const TextStyle(
                 fontSize: 14,
                 // fontWeight: FontWeight.bold,
                 color: Colors.black,
               ),
               overflow: TextOverflow.ellipsis,
             ),
            ))
               .toList(),
            value: selecteditemcolor,
            onChanged: (value) {
             setState(() {
               selecteditemcolor = value as String;
             });
            },  


            icon: const Icon(
             Icons.arrow_drop_down,
            ),
            iconSize: 25,
            iconEnabledColor: Color(0XFF38c6b3),
            // iconDisabledColor: Colors.grey,
            buttonHeight: 60,
            buttonWidth: 160,
            buttonPadding: const EdgeInsets.only(left: 14, right: 14),
            buttonDecoration: BoxDecoration(
             borderRadius: BorderRadius.circular(14),
             border: Border.all(
               color: Colors.black26,
             ),
             // color: Colors.redAccent,
            ),
            buttonElevation: 0,
            itemHeight: 45,
            itemPadding: const EdgeInsets.only(left: 14, right: 14),
            dropdownMaxHeight: 350,
            dropdownWidth: 350,
            dropdownPadding: null,
            dropdownDecoration: BoxDecoration(
             borderRadius: BorderRadius.circular(10),
             // color: Colors.blue.shade900,
             //   border: Border.all(color: Colors.blue)
            ),
            dropdownElevation: 2,
            scrollbarRadius: const Radius.circular(40),
            scrollbarThickness: 6,
            scrollbarAlwaysShow: true,
            offset: const Offset(-20, 0),
      ),
      ),
      ),
      ),
    ),

            Padding(
             padding: const EdgeInsets.only(top: 13,left: 20,right: 20),
             child: Container(height: 40,
               child:
               DropdownButtonHideUnderline(
                 child: SizedBox(width: 350,
                   child: DropdownButton2(
                     isExpanded: true,
                     items: itemwashtype
                         .map((item) => DropdownMenuItem<String>(
                       value: item,
                       child: Text(
                         item,
                         style: const TextStyle(
                           fontSize: 14,
                           // fontWeight: FontWeight.bold,
                           color: Colors.black,
                         ),
                         overflow: TextOverflow.ellipsis,
                       ),
                     ))
                         .toList(),
                     value: selecteditemwashtype,
                     onChanged: (value) {
                       setState(() {
                         selecteditemwashtype = value as String;
                       });
                     },

                     icon: const Icon(
                       Icons.arrow_drop_down,
                     ),
                     iconSize: 25,
                     iconEnabledColor:  Color(0XFF38c6b3),
                     // iconDisabledColor: Colors.grey,
                     buttonHeight: 60,
                     buttonWidth: 160,
                     buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                     buttonDecoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(14),
                       border: Border.all(
                         color: Colors.black26,
                       ),
                       // color: Colors.redAccent,
                     ),
                     buttonElevation: 0,
                     itemHeight: 45,
                     itemPadding: const EdgeInsets.only(left: 14, right: 14),
                     dropdownMaxHeight: 350,
                     dropdownWidth: 350,
                     dropdownPadding: null,
                     dropdownDecoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       // color: Colors.blue.shade900,
                       //   border: Border.all(color: Colors.blue)
                     ),
                     dropdownElevation: 2,
                     scrollbarRadius: const Radius.circular(40),
                     scrollbarThickness: 6,
                     scrollbarAlwaysShow: true,
                     offset: const Offset(-20, 0),
                   ),
                 ),
               ),
             ),
            ),


            Padding(
             padding: const EdgeInsets.only(top: 13,left: 20,right: 20),
             child: Container(height: 40,
               child:
               DropdownButtonHideUnderline(
                 child: SizedBox(width: 350,
                   child: DropdownButton2(
                     isExpanded: true,
                     items: items
                         .map((item) => DropdownMenuItem<String>(
                       value: item,
                       child: Text(
                         item,
                         style: const TextStyle(
                           fontSize: 14,
                           // fontWeight: FontWeight.bold,
                           color: Colors.black,
                         ),
                         overflow: TextOverflow.ellipsis,
                       ),
                     ))
                         .toList(),
                     value: selectedItem,
                     onChanged: (value) {
                       setState(() {
                         selectedItem = value as String;
                       });
                     },

                     icon: const Icon(
                       Icons.arrow_drop_down,
                     ),
                     iconSize: 25,
                     iconEnabledColor:  Color(0XFF38c6b3),
                     // iconDisabledColor: Colors.grey,
                     buttonHeight: 60,
                     buttonWidth: 160,
                     buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                     buttonDecoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(14),
                       border: Border.all(
                         color: Colors.black26,
                       ),
                       // color: Colors.redAccent,
                     ),
                     buttonElevation: 0,
                     itemHeight: 45,
                     itemPadding: const EdgeInsets.only(left: 14, right: 14),
                     dropdownMaxHeight: 350,
                     dropdownWidth: 350,
                     dropdownPadding: null,
                     dropdownDecoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       // color: Colors.blue.shade900,
                       //   border: Border.all(color: Colors.blue)
                     ),
                     dropdownElevation: 2,
                     scrollbarRadius: const Radius.circular(40),
                     scrollbarThickness: 6,
                     scrollbarAlwaysShow: true,
                     offset: const Offset(-20, 0),
                   ),
                 ),
               ),
             ),
            ),
            Padding(
             padding: const EdgeInsets.only(top: 13,left: 20,right: 20),
             child: Container(height: 40,
                 child: TextFormField(
               decoration: InputDecoration(hintText: "Enter the required quantity",

               enabledBorder: OutlineInputBorder(borderSide: BorderSide(  color: Colors.black26,),
                   borderRadius: BorderRadius.circular(15)),
               focusedBorder: OutlineInputBorder(borderSide: BorderSide( color: Colors.black26,),
                   borderRadius: BorderRadius.circular(15)
             ),),)
             ),
            ),
Padding(
  padding: const EdgeInsets.only(top: 13,left: 20,right: 20,bottom:30 ),
  child:   Container(height: 70,

      decoration: BoxDecoration(

      borderRadius: BorderRadius.circular(15),border: Border.all(color: Colors.black26,),
      color: Colors.grey.shade200),

    child: TextField(
      // textAlign: TextAlign.left,

      decoration: InputDecoration(hintText: "    Write more details here............",

            enabledBorder: InputBorder.none,

            focusedBorder: InputBorder.none

      ),

    keyboardType: TextInputType.multiline,

    minLines: 1,//Normal textInputField will be displayed

    maxLines: 5,// when user presses enter it will adapt to it

  )

  ),
),
            ],),


            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32,right: 32,top: 40),
          child: ClayContainer(borderRadius: 10,
            spread: 2,
            depth: 50,
            width: double.infinity,
            curveType: CurveType.concave,
            color:  Color(0XFF38c6b3),

            child: TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NumberStepper()));
            },
              child: Text("Post Request",style: CommonStyles.loginText(),),),
          ),
        ),

      ]
    )
      )
    );
  }
}