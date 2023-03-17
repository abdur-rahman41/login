
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


TextStyle Head1Text(textColor){
  return TextStyle(
    color: textColor,
    fontSize: 28,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w700,
  );
}

TextStyle Head6Text(textColor){
  return TextStyle(
      color: textColor,
      fontSize: 16,
      fontFamily: 'poppins',
      fontWeight: FontWeight.w400
  );
}
TextStyle Head7Text(textColor){
  return TextStyle(
      color: textColor,
      fontSize: 13,
      fontFamily: 'poppins',
      fontWeight: FontWeight.w400
  );
}

TextStyle Head9Text(textColor){
  return TextStyle(
      color: textColor,
      fontSize: 9,
      fontFamily: 'poppins',
      fontWeight: FontWeight.w500
  );
}

SvgPicture ScreenBackground(context){
  return SvgPicture.asset(
    'assets/images/screen-back.svg',
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    fit: BoxFit.cover,
  );
}


InputDecoration AppInputDecoration(label){
  return InputDecoration(

        prefixIcon: Padding(
          padding: EdgeInsets.all(0),
          child: Icon(
            Icons.email_outlined
          ),
        ),
      focusedBorder:  const OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.green, width: 1),
      ),
      fillColor: Colors.white,
      filled: true,
      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
      enabledBorder: const OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white, width: 0.0),
      ),
      border: OutlineInputBorder(borderRadius:BorderRadius.circular(5)),
      labelText: label,

  );
}


ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
      elevation: 1,
      padding: EdgeInsets.zero,
      backgroundColor: Colors.orange,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),

  );
}