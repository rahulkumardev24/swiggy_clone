import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swiggy_clone_app/domain/custom_style/myTestStyle.dart';
import 'package:swiggy_clone_app/screen/location_screen.dart';
import 'package:swiggy_clone_app/screen/widgets/custom_button.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mqData = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          // Noodles image as full background with opacity
          Positioned.fill(
            child: Opacity(
              opacity: 0.5,
              child: Image.asset(
                "assets/image/noodles.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),

          Positioned(
            bottom: 50,
            left: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 100, // Adjust width as needed
                  child: Image.asset(
                    "assets/image/Swiggy-Emblem.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  "Swiggy",
                  style: myTextStyle30(fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  width: mqData.size.width * 0.9,
                  child: Row(
                    children: [
                      Text(
                        "Food",
                        style: myTextStyle25(
                            fontWeight: FontWeight.w900,
                            fontColor: Colors.black87),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Instamart",
                        style: myTextStyle25(
                            fontWeight: FontWeight.w900,
                            fontColor: Colors.black87),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Dineout",
                        style: myTextStyle25(
                            fontWeight: FontWeight.w900,
                            fontColor: Colors.black87),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: mqData.size.width * 0.9,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black54)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Up to 40% off on dining bills",
                  style: myTextStyle25(
                      fontFamily: "fontSecond", fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10,) ,
                CustomButton(buttonText: "Get started", onPress: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LocationScreen()));
                })

              ],
            ),
          ),
        ],
      ),
    );
  }
}
