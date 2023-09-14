

import 'package:auth/helper/validations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldEmail extends StatelessWidget {



  CustomTextFormFieldEmail({this.hintText,this.onChanged});
  String? hintText;
  Function(String)?onChanged;


  @override
  Widget build(BuildContext context) {
    return
      TextFormField(

        style: TextStyle(
          color: Colors.black, // Change this color to your desired text color
        ),

      validator: validateEmail,


        onChanged: onChanged,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFECECEC),
          prefixIcon:  Icon(
            Icons.email,
            color: Color(0xFF2196F3),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color(0xFF2196F3),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: Color(0xFF2196F3),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: Color(0xFF2196F3),
            ),
          ),
        ),
      );
  }
}
class CustomTextFormFieldPass extends StatelessWidget {



  CustomTextFormFieldPass({this.hintText,this.onChanged,this.onTap});
  String? hintText;
  Function(String)?onChanged;
  VoidCallback?onTap;


  @override
  Widget build(BuildContext context) {
    return
      TextFormField(
        style: TextStyle(
          color: Colors.black, // Change this color to your desired text color
        ),

onTap: onTap,

      validator: validatePassword,

obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(

          filled: true,
          fillColor: Color(0xFFECECEC),
          prefixIcon:  Icon(
            Icons.lock_outline,
           color: Color(0xFF2196F3),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color(0xFF2196F3),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: Color(0xFF2196F3),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: Color(0xFF2196F3),
            ),
          ),
        ),
      );
  }
}
class CustomTextFormFieldFName extends StatelessWidget {



  CustomTextFormFieldFName({this.hintText,this.onChanged,this.onTap});
  String? hintText;
  Function(String)?onChanged;
  VoidCallback?onTap;


  @override
  Widget build(BuildContext context) {
    return
      TextFormField(
        style: TextStyle(
          color: Colors.black, // Change this color to your desired text color
        ),

onTap: onTap,

      validator: validateFullName,


        onChanged: onChanged,
        decoration: InputDecoration(

          filled: true,
          fillColor: Color(0xFFECECEC),
          prefixIcon:  Icon(
            Icons.person,
           color: Color(0xFF2196F3),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color(0xFF2196F3),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: Color(0xFF2196F3),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: Color(0xFF2196F3),
            ),
          ),
        ),
      );
  }
}
class CustomTextFormFieldNum extends StatelessWidget {



  CustomTextFormFieldNum({this.hintText,this.onChanged,this.onTap});
  String? hintText;
  Function(String)?onChanged;
  VoidCallback?onTap;


  @override
  Widget build(BuildContext context) {
    return
      TextFormField(
        style: TextStyle(
          color: Colors.black, // Change this color to your desired text color
        ),

onTap: onTap,

      validator: validatePhoneNumber,


        onChanged: onChanged,
        decoration: InputDecoration(

          filled: true,
          fillColor: Color(0xFFECECEC),
          prefixIcon:  Icon(
            Icons.phone,
           color: Color(0xFF2196F3),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color(0xFF2196F3),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: Color(0xFF2196F3),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: Color(0xFF2196F3),
            ),
          ),
        ),
      );
  }
}
