import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swiggy_clone_app/domain/custom_style/myTestStyle.dart';
import 'package:swiggy_clone_app/screen/widgets/custom_button.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What's your location?",
            style: myTextStyle30(
                fontColor: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "we need your location to show available restaurants & products.",
            style: myTextStyle20(fontFamily: "fontSecond"),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              height: 400,
              child: Image.asset(
                "assets/image/poster.png",
                fit: BoxFit.cover,
              )),
          Center(
              child: CustomButton(
                  buttonText: "Allow location access", onPress: () {})),
          Center(
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "Enter Location Manually",
                  style: myTextStyle20(
                      fontWeight: FontWeight.bold, fontColor: Colors.deepOrange),
                )),
          )
        ],
      ),
    );
  }
}
