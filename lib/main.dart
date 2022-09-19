import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:srap/pages/seller_buyer.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (choontext , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Splash Screen',
          theme: ThemeData(

            brightness: Brightness.light,
            primarySwatch: Colors.teal,
// primaryColorLight:Colors.greenAccent,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: child,
        );
      },
      child:  SellBuyer(),

      // routes: {
      //   'first':(context)=>Profile(),
      //   'second':(context)=>Onboarding(),
      // },
    );
  }
}


