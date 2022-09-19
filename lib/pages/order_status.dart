import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:im_stepper/main.dart';
import 'package:srap/common/common_styles.dart';
import 'package:srap/pages/stepper.dart';

class OrderStatusScreen extends StatefulWidget{
  @override
  State<OrderStatusScreen> createState() => _OrderStatusScreenState();
}

class _OrderStatusScreenState extends State<OrderStatusScreen> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(child: Column(
          children: [
        Padding(
          padding: const EdgeInsets.only(top: 60),

          child: Text("Order Status",style: CommonStyles.Bluelargetext(),),
        ),
        Text("ORDER ID : 2344677",style: GoogleFonts.montserrat(textStyle: TextStyle(letterSpacing: 0.2,
            fontSize: 13,color:Colors.grey,
            // fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat')
        )),

        Padding(
          padding: const EdgeInsets.only(left: 23,top: 15,right: 18),
          child:
          ClayContainer(
              color: Color(0XFFade6dd),
              borderRadius: 5,
            spread: 1.5,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(height: 40,
                  child: Row(children: [
                    Text("Type Of Scrap"),SizedBox(width: 120,),
                    Text("E-waste")
                  ],),
                ),
              ),
              Container(color: Colors.white,
                child: Row(
                children: [
                  Container(child: Padding(
                    padding: const EdgeInsets.only(top: 0.8,left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text("Scrap color"),
                        SizedBox(height: 9,),
                        Text("Quantity)"),
                        SizedBox(height: 9,),
                        Text("wash type"),
                        SizedBox(height: 9,),
                        Text("Date"),
                        SizedBox(height: 9,),
                        Text("Time"),

                      ],),
                  ),),

SizedBox(width: 125,),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text("Black"),
                        SizedBox(height: 9),
                        Text("20 Kg"),
                        SizedBox(height: 9,),
                        Text("Washed"),
                        SizedBox(height: 9,),
                        Text("20 mar 2021"),
                        SizedBox(height: 9,),
                        Text("12:30 pm")

                      ],),
                    ),
                  )
                ],),)
            ],)

          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 15,top: 20,right: 10),
          child: ClayContainer(height: 485,
             spread: 3,
            color:  Color(0XFFade6dd),
            child: Column(children: [

            Padding(
              padding: const EdgeInsets.only(top: 13,bottom: 13),
              child: Row(children: [
              Text("  Order Status"),SizedBox(width: 120,),
              Text("Order Id:2344677")
              ],),
            ),



    Container(color: Colors.white,
    child: Column(
    children: [
    Stepper(
    type: stepperType,
    physics: ScrollPhysics(),
    currentStep: _currentStep,
    onStepTapped: (step) => tapped(step),
    onStepContinue:  continued,
    onStepCancel: cancel,
    steps: <Step>[
    Step(
    title: new Text('Order request Sent',style: CommonStyles.loginText(),),
    content: Padding(
    padding: const EdgeInsets.only(right: 80,),     child: Column(
    children: <Widget>[

    Text("Electronic Waste",style: CommonStyles.black13Thin()),
    Text("Sat, 11 Apr 2021, 12:30pm",style: TextStyle(fontSize: 12),)

    ],
    ),
    ),
    isActive: _currentStep >= 0,
    state: _currentStep >= 0 ?
    StepState.complete : StepState.disabled,
    ),
    Step(
    title: new Text('Order in process',style: CommonStyles.loginText(),),
    content: Padding(
    padding: const EdgeInsets.only(right: 80,),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[

    Text("Electronic Waste",style: CommonStyles.black13Thin()),
    Text("Sat, 11 Apr 2021, 12:30pm",style: TextStyle(fontSize: 12),)



    ],
    ),
    ),
    isActive: _currentStep >= 0,
    state: _currentStep >= 1 ?
    StepState.complete : StepState.disabled,
    ),
    Step(
    title: new Text('Order Dispatched',style: CommonStyles.loginText(),),
    content: Padding(
    padding: const EdgeInsets.only(right: 80,),   child: Column(
    children: <Widget>[

    Text("Electronic Waste",style: CommonStyles.black13Thin()),
    Text("Sat, 11 Apr 2021, 12:30pm",style: TextStyle(fontSize: 12),)

    ],
    ),
    ),
    isActive:_currentStep >= 0,
    state: _currentStep >= 3 ?
    StepState.complete : StepState.disabled,
    ),
    Step(
    title: new Text('Order Completed',style: CommonStyles.loginText(),),
    content: Padding(
    padding: const EdgeInsets.only(right: 80,),    child: Column(
    children: <Widget>[

    Text("Electronic Waste",style: CommonStyles.black13Thin()),
    Text("Sat, 11 Apr 2021, 12:30pm",style: TextStyle(fontSize: 12),)

    ],
    ),
    ),
    isActive:_currentStep >= 0,
    state: _currentStep >= 3?
    StepState.complete : StepState.disabled,
    ),
    ],
    ),
    ],
    ),
    ),

              // Container(height: 400,
              //     child:
                  // NumStepperDemo())

        ],)




    ) ,)
    ])));
  }

  tapped(int step){
    setState(() => _currentStep = step);
  }

  continued(){
    _currentStep < 3 ?
    setState(() => _currentStep += 1): null;
  }

  cancel(){
    _currentStep > 0 ?
    setState(() => _currentStep -= 1) : null;
  }
}

