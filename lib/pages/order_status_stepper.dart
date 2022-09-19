import 'package:flutter/material.dart';
import 'package:srap/common/common_styles.dart';

class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Flutter Stepper Dem'),
        centerTitle: true,
      ),
      body:  Container(
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
                        // TextFormField(
                        //   decoration: InputDecoration(labelText: 'Email Address'),
                        // ),
                        // TextFormField(
                        //   decoration: InputDecoration(labelText: 'Password'),
                        // ),
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
                        // TextFormField(
                        //   decoration: InputDecoration(labelText: 'Home Address'),
                        // ),
                        // TextFormField(
                        //   decoration: InputDecoration(labelText: 'Postcode'),
                        // ),

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
                        // TextFormField(
                        //   decoration: InputDecoration(labelText: 'Mobile Number'),
                        // ),
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
                        // TextFormField(
                        //   decoration: InputDecoration(labelText: 'Mobile Number'),
                        // ),
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
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.list),
      //   onPressed: switchStepsType,
      // ),

    );
  }
  // switchStepsType() {
  //   setState(() => stepperType == StepperType.vertical
  //       ? stepperType = StepperType.horizontal
  //       : stepperType = StepperType.vertical);
  // }

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
