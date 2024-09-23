import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../../domain/custom_style/myTestStyle.dart';

class CustomButton extends StatelessWidget {
  final String buttonText ;
  final Callback onPress ;
  const CustomButton({super.key , required this.buttonText , required this.onPress});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mqData = MediaQuery.of(context);
    return  SizedBox(
      width: mqData.size.width*0.9,
      child: ElevatedButton(
          onPressed: onPress ,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          child: Text(
            buttonText,
            style: myTextStyle20(
                fontWeight: FontWeight.bold, fontColor: Colors.white),
          )),
    ) ;
  }
}
