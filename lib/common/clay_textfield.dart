
import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';

class ClayTextFormField extends StatelessWidget{
  final String hintText;
  final IconData iconData;
  // final TextEditingController formController;
  // final int maximumLength;
  // final double iconSize;
  // final bool obsecure;
  // final TextInputType keyboardInputType;
  // final TextInputAction inputAction;
  // String? Function(String?)? validation;
  ClayTextFormField({
    Key?key,
    required this.hintText,
    required this.iconData,
  }): super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 25,right: 25,bottom: 15),
      child: ClayContainer(
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,
            boxShadow: [BoxShadow(
                color:  Color(0XFFade6dd),
                blurRadius: 0.5,
                spreadRadius: 0.5,
                offset: Offset(1,1)
            ),
              BoxShadow(
                  color:  Color(0XFFade6dd),
                  blurRadius: 1,
                  spreadRadius: 1,
                  offset: Offset(2,2)
              )
            ],
          ),

          width: double.infinity,
          child:
          TextFormField(decoration: InputDecoration(
            prefixIcon:Icon(iconData) ,
            enabledBorder: InputBorder.none,
            // OutlineInputBorder(borderSide: BorderSide()),
            focusedBorder:InputBorder.none,
            // OutlineInputBorder(borderSide: BorderSide()),
            hintText: hintText,

          ),

          ),

        ),
      ),
    );
  }
}