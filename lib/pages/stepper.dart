// import 'package:flutter/material.dart';
// import 'package:srap/common/common_styles.dart';
//
// class StepperDemo extends StatefulWidget {
//   @override
//   _StepperDemoState createState() => _StepperDemoState();
// }
//
// class _StepperDemoState extends State<StepperDemo> {
//   int _currentStep = 0;
//   StepperType stepperType = StepperType.vertical;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: Text('Flutter Stepper Demo'),
//         centerTitle: true,
//       ),
//       body:  Container(
//         child: Column(
//           children: [
//             Stepper(
//               type: stepperType,
//               physics: ScrollPhysics(),
//               currentStep: _currentStep,
//               onStepTapped: (step) => tapped(step),
//               onStepContinue:  continued,
//               onStepCancel: cancel,
//               steps: <Step>[
//                 Step(
//                   title: new Text('Order request Sent',style: CommonStyles.loginText(),),
//                   content: Padding(
//                     padding: const EdgeInsets.only(right: 80,),     child: Column(
//                       children: <Widget>[
//                         // TextFormField(
//                         //   decoration: InputDecoration(labelText: 'Email Address'),
//                         // ),
//                         // TextFormField(
//                         //   decoration: InputDecoration(labelText: 'Password'),
//                         // ),
//                         Text("Electronic Waste",style: CommonStyles.black13Thin()),
//                         Text("Sat, 11 Apr 2021, 12:30pm",style: TextStyle(fontSize: 12),)
//
//                       ],
//                     ),
//                   ),
//                   isActive: _currentStep >= 0,
//                   state: _currentStep >= 0 ?
//                   StepState.complete : StepState.disabled,
//                 ),
//                 Step(
//                   title: new Text('Order in process',style: CommonStyles.loginText(),),
//                   content: Padding(
//                     padding: const EdgeInsets.only(right: 80,),
//                     child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         // TextFormField(
//                         //   decoration: InputDecoration(labelText: 'Home Address'),
//                         // ),
//                         // TextFormField(
//                         //   decoration: InputDecoration(labelText: 'Postcode'),
//                         // ),
//
//                         Text("Electronic Waste",style: CommonStyles.black13Thin()),
//                         Text("Sat, 11 Apr 2021, 12:30pm",style: TextStyle(fontSize: 12),)
//
//
//
//                       ],
//                     ),
//                   ),
//                   isActive: _currentStep >= 0,
//                   state: _currentStep >= 1 ?
//                   StepState.complete : StepState.disabled,
//                 ),
//                 Step(
//                   title: new Text('Order Dispatched',style: CommonStyles.loginText(),),
//                   content: Padding(
//                     padding: const EdgeInsets.only(right: 80,),   child: Column(
//                       children: <Widget>[
//                         // TextFormField(
//                         //   decoration: InputDecoration(labelText: 'Mobile Number'),
//                         // ),
//                         Text("Electronic Waste",style: CommonStyles.black13Thin()),
//                         Text("Sat, 11 Apr 2021, 12:30pm",style: TextStyle(fontSize: 12),)
//
//                       ],
//                     ),
//                   ),
//                   isActive:_currentStep >= 0,
//                   state: _currentStep >= 3 ?
//                   StepState.complete : StepState.disabled,
//                 ),
//                 Step(
//                   title: new Text('Order Completed',style: CommonStyles.loginText(),),
//                   content: Padding(
//                     padding: const EdgeInsets.only(right: 80,),    child: Column(
//                       children: <Widget>[
//                         // TextFormField(
//                         //   decoration: InputDecoration(labelText: 'Mobile Number'),
//                         // ),
//                         Text("Electronic Waste",style: CommonStyles.black13Thin()),
//                         Text("Sat, 11 Apr 2021, 12:30pm",style: TextStyle(fontSize: 12),)
//
//                       ],
//                     ),
//                   ),
//                   isActive:_currentStep >= 0,
//                   state: _currentStep >= 3?
//                   StepState.complete : StepState.disabled,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       // floatingActionButton: FloatingActionButton(
//       //   child: Icon(Icons.list),
//       //   onPressed: switchStepsType,
//       // ),
//
//     );
//   }
//   // switchStepsType() {
//   //   setState(() => stepperType == StepperType.vertical
//   //       ? stepperType = StepperType.horizontal
//   //       : stepperType = StepperType.vertical);
//   // }
//
//   tapped(int step){
//     setState(() => _currentStep = step);
//   }
//
//   continued(){
//     _currentStep < 3 ?
//     setState(() => _currentStep += 1): null;
//   }
//   cancel(){
//     _currentStep > 0 ?
//     setState(() => _currentStep -= 1) : null;
//   }
// }


import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:srap/common/common_styles.dart';



class NumStepperDemo extends StatefulWidget {
  @override
  StepperDemo createState() => StepperDemo();
}

class StepperDemo extends State<NumStepperDemo> {
  String? transfermode;
  // THE FOLLOWING TWO VARIABLES ARE REQUIRED TO CONTROL THE STEPPER.
  int activeStep = 0; // Initial step set to 5.

  int upperBound = 2; // upperBound MUST BE total number of icons minus 1.
 Color containerColor =Colors.black;
 Color containerdate = Colors.blueGrey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(appbartitle()),),

        body: Padding(
          padding: const EdgeInsets.only(top: 15,left: 5),
          child: Column(
            children: [
              NumberStepper(enableNextPreviousButtons: false,
              stepRadius: 18,
              
              activeStepColor:  Color(0XFF38c6b3),

              numbers:[
              1,
              2,
              3,


              ],


                // activeStep property set to activeStep variable defined above.
                activeStep: activeStep,

                // This ensures step-tapping updates the activeStep.
                onStepReached: (index) {
                  setState(() {
                    activeStep = index;
                  });
                },
              ),
              Divider(thickness: 1,color: Colors.blueGrey.shade100),
              Expanded(child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  child: stepperdata()
                ),
              )),
              // Expanded(
              //   child: FittedBox(
              //     child: Center(
              //       child: Text('$activeStep'),
              //     ),
              //   ),
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     previousButton(),
              //     nextButton(),
              //   ],
              // ),
            ],
          ),
        ),

    );
  }

  /// Returns the next button.
  // Widget nextButton() {
  //   return ElevatedButton(
  //     onPressed: () {
  //       // Increment activeStep, when the next button is tapped. However, check for upper bound.
  //       if (activeStep < upperBound) {
  //         setState(() {
  //           activeStep++;
  //         });
  //       }
  //     },
  //     child: Text('Next'),
  //   );
  // }
  //
  // /// Returns the previous button.
  // Widget previousButton() {
  //   return ElevatedButton(
  //     onPressed: () {
  //       // Decrement activeStep, when the previous button is tapped. However, check for lower bound i.e., must be greater than 0.
  //       if (activeStep > 0) {
  //         setState(() {
  //           activeStep--;
  //         });
  //       }
  //     },
  //     child: Text('Prev'),
  //   );
  // }

  /// Returns the header wrapping the header text.
  // Widget header() {
  //   return Container(
  //     decoration: BoxDecoration(
  //       color: Colors.orange,
  //       borderRadius: BorderRadius.circular(5),
  //     ),
  //     child: Row(
  //       children: [
  //         Padding(
  //           padding: const EdgeInsets.all(8.0),
  //           child: Column(children: [
  //             Text(
  //               headerText(),
  //               style: TextStyle(
  //                 color: Colors.black,
  //                 fontSize: 20,
  //               ),
  //             ),
  //             Text(
  //              "Welcome Again",
  //               style: TextStyle(
  //                 color: Colors.black,
  //                 fontSize: 20,
  //               ),
  //             ),
  //           ],)
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Returns the header text based on the activeStep.
  String headerText() {
    switch (activeStep) {
      case 1:
        return 'Preface';

      case 2:
        return 'Table of Contents';

      case 3:
        return 'About the Author';

      case 4:
        return 'Publisher Information';

      case 5:
        return 'Reviews';

      case 6:
        return 'Chapters #1';

      default:
        return 'Introduction';
    }
  }

  String appbartitle() {
    switch (activeStep) {
      case 1:
        return 'Select Date & Time';

      case 2:
        return 'Payment';

      case 3:
        return 'Payment';

      case 4:
        return 'Publisher Information';

      case 5:
        return 'Reviews';

      case 6:
        return 'Chapters #1';

      default:
        return 'Address';
    }


  }
  Widget stepperdata() {
    switch (activeStep) {
      case 1:
        return Container( 
            child:
        Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text("Please select your preferable pickup date",style: CommonStyles.black13Thin(),),
          ),
         SizedBox(height: 10,),
         Row(children: [SizedBox(width: 5,),
           InkWell(
             child: Container(height: 60,width: 90,
               decoration: BoxDecoration(border: Border.all(color: containerColor),borderRadius: BorderRadius.circular(10)),
               child: Column(children: [
               Padding(
                 padding: const EdgeInsets.only(top: 10,bottom: 5),
                 child: Text("Thursday",style: TextStyle(color: containerColor),),
               ),
               Text("28",style: CommonStyles.graybigtext(),)
             ],),),
             onTap: (){
               setState(() {
                 containerColor=Colors.teal;
                 containerdate=Colors.teal;

               });
             },
           ),
SizedBox(width: 10,),
           Container(height: 60,width: 90,
             decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
             child: Column(children: [
               Padding(
                 padding: const EdgeInsets.only(top: 10,bottom: 5),
                 child: Text("Thursday"),
               ),
               Text("28",style: CommonStyles.graybigtext(),)
             ],),),
SizedBox(width: 10,),
           Container(height: 60,width: 90,
             decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
             child: Column(children: [
               Padding(
                 padding: const EdgeInsets.only(top: 10,bottom: 5),
                 child: Text("Thursday"),
               ),
               Text("28",style: CommonStyles.graybigtext(),)
             ],),),
         ],),

            SizedBox(height: 10,),
            Row(children: [SizedBox(width: 5,),
              Container(height: 60,width: 90,
                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 5),
                    child: Text("Thursday"),
                  ),
                  Text("28",style: CommonStyles.graybigtext(),)
                ],),),
              SizedBox(width: 10,),
              Container(height: 60,width: 90,
                decoration: BoxDecoration(border: Border.all(
                  // color:  Color(0XFF38c6b3),
                ),borderRadius: BorderRadius.circular(10)),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 5),
                    child: Text("Thursday"),
                  ),
                  Text("28",style: CommonStyles.graybigtext(),)
                ],),),
              SizedBox(width: 10,),
              Container(height: 60,width: 90,
                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 5),
                    child: Text("Thursday"),
                  ),
                  Text("28",style: CommonStyles.graybigtext(),)
                ],),),
            ],),

            SizedBox(height: 10,),
            Row(children: [SizedBox(width: 5,),
             Container(height: 60,width: 90,
                decoration: BoxDecoration(border: Border.all(
                ),borderRadius: BorderRadius.circular(10)),

                child: Column(
                  children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 5),
                    child: Text("Thursday"),
                  ),
                  Text("28",style: CommonStyles.graybigtext(),)
                ],),),


            ],),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text("Your availability on that day",style: CommonStyles.black13Thin(),),
            ),
            SizedBox(height: 10,),
            Row(children: [SizedBox(width: 5,),
              Container(height: 30,width: 130,
                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 7,left: 5),
                  child: Text("11:00 AM - 02:00 Pm"),
                ),),
              SizedBox(width: 10,),
              Container(height: 30,width: 130,
                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 7,left: 5),
                  child: Text("11:00 AM - 02:00 Pm"),
                ),),


            ],),
            SizedBox(height: 10,),
            Row(children: [SizedBox(width: 5,),
              Container(height: 30,width: 130,
                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 7,left: 5),
                  child: Text("11:00 AM - 02:00 Pm"),
                ),),
              SizedBox(width: 10,),
              Container(height: 30,width: 130,
                decoration: BoxDecoration(border: Border.all(color:  Color(0XFF38c6b3),),borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 7,left: 5),
                  child: Text("11:00 AM - 02:00 Pm",style: TextStyle(color:  Color(0XFF38c6b3),),),
                ),),


            ],),


          ],));

      case 2:
        return Container(child: Padding(
          padding: const EdgeInsets.only(right: 0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Padding(
              padding: const EdgeInsets.only(right: 220),
              child: Text("Bank Transfer",style: CommonStyles.blackloginText(),),
            ),
            RadioListTile(contentPadding: EdgeInsetsDirectional.zero,

                title: Text("Axis Bank",style: CommonStyles.black13Thin(),),
                value: "Axis Bank", groupValue: transfermode, onChanged: (value){
              setState(() {
                transfermode = value.toString();
              });
            }),
            RadioListTile(contentPadding: EdgeInsetsDirectional.zero,
              title: Text("Kotak Mahindra Bank",style: CommonStyles.black13Thin(),),
              value:"Kotak Mahindra Bank",
              groupValue: transfermode,
              onChanged: (value){
                setState(() {
                  transfermode = value.toString();
                });
              },
            ),
              Padding(
                padding: const EdgeInsets.only(right: 300,top: 10),
                child: Text("UPI",style: CommonStyles.blackloginText(),),
              ),
            RadioListTile(isThreeLine: false,
               contentPadding: EdgeInsetsDirectional.zero,
              title: Text("upi",style: CommonStyles.black13Thin(),),
              value: "upi",
              groupValue: transfermode,
              onChanged: (value){
                setState(() {
                  transfermode = value.toString();
                });
              },
            ),

          ],),
        ),);

      case 3:
        return Container();



      default:
        return Container(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(right: 120),
              child: Text("Enter the following Details:",style: CommonStyles.blackloginText(),),
            ),
            TextFormField(
                            decoration: InputDecoration(labelText: 'Present Home Address'),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Mobile Number'),
                          ),
          ],),
        ),);
    }


  }

}


class SelectDate extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return ListView.builder(  itemCount: 5,
        itemBuilder: (context, index){
          return  Card(
            child: Column(
              children: [
                Container(height: 50,width: 100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      border: Border.all()),
                  child:
                  Column(children: [
                    Text("Thursday"),
                    Text("28",style: CommonStyles.graybigtext(),)
                  ],),

                ),
              ],
            ),
          );
        });

  }
}