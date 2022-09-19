import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonStyles{
  CommonStyles._();

  static loginText(){

    return GoogleFonts.montserrat(textStyle: TextStyle(letterSpacing: 0.3,
        fontSize: 16,color: Color(0xFF122599),
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat')
    );
  }
  static blackloginText(){

    return GoogleFonts.montserrat(textStyle: TextStyle(letterSpacing: 0.3,
        fontSize: 16,color: Colors.black,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat')
    );
  }
  static profText(){

    return GoogleFonts.montserrat(textStyle: TextStyle(letterSpacing: 0.1,
        fontSize: 19,color:Colors.black,
         fontWeight: FontWeight.w600,
        fontFamily: 'Montserrat')
    );
  }
  static black12() {
    return GoogleFonts.montserrat(
        textStyle: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 12, color: Colors.black));
  }
  static black14() {
    return GoogleFonts.montserrat(
        textStyle: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black38));
  }

  static black13Thin() {
    return GoogleFonts.montserrat(
        textStyle: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black));
  }
  static graytext(){

    return GoogleFonts.montserrat(textStyle: TextStyle(letterSpacing: 0.2,
        fontSize: 10,color:Colors.grey,
        // fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat')
    );
  }
  static graybigtext(){

    Color containerdate=Colors.blueGrey;
    return GoogleFonts.montserrat(textStyle: TextStyle(letterSpacing: 0.2,
        fontSize: 20,color:containerdate,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat')
    );
  }
  static graydarktext(){

    return GoogleFonts.montserrat(textStyle: TextStyle(letterSpacing: 0.2,
        fontSize: 10,color:Colors.black87,
        // fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat')
    );
  }
  static greentext(){

    return GoogleFonts.montserrat(textStyle: TextStyle(letterSpacing: 0.3,
        fontSize: 12,color: Colors.green,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat')
    );
  }

  static greenlargetext(){

    return GoogleFonts.montserrat(textStyle: TextStyle(letterSpacing: 0.3,
        fontSize: 17,color: Colors.blue.shade900,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat')
    );
  }

  static Bluelargetext(){

    return GoogleFonts.monda(textStyle: TextStyle(letterSpacing: 0.2,
        fontSize: 26,color: Colors.black,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat')
    );
  }
  static BlueBlargetext(){

    return GoogleFonts.monda(textStyle: TextStyle(letterSpacing: 0.2,
        fontSize: 26,color: Colors.blue.shade900,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat')
    );
  }

}

// static profileTextLight() {
//   return GoogleFonts.montserrat(
//     textStyle: const TextStyle(
//       letterSpacing: 0.3,
//       fontSize: 14,
//       color: Color(0xFF004D40),
//       fontWeight: FontWeight.w400,
//       fontFamily: 'Montserrat',
//     ),
//   );
// }
