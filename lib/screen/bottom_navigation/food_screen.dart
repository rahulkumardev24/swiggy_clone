import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../domain/custom_style/myTestStyle.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.navigation_rounded , color: Colors.deepOrange,),
                    Text("Khanpur" , style: myTextStyle25(fontWeight: FontWeight.bold),)
                  ],
                ) ,
                Text("kharar,punjab 140301 ,India",style: myTextStyle15(fontColor: Colors.black54),)

              ],
            ) ,
            const Icon(Icons.account_circle_sharp , size: 30,)
          ],
        ),
      ),

    );
  }
}
