import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swiggy_clone_app/screen/widgets/image_slider.dart';

import '../../domain/custom_style/myTestStyle.dart';

class SwiggyScreen extends StatefulWidget {
  const SwiggyScreen({super.key});

  @override
  State<SwiggyScreen> createState() => _SwiggyScreenState();
}

/// Card Data
List<Map<String, dynamic>> cardData = [
  {
    "title": "FOOD DELIVERY",
    "subTitle": "FLASH SALE, LIVE NOW",
    "status": "MIN \$175 OFF",
    "imagePath": "assets/image/pizzapng-removebg-preview.png"
  },
  {
    "title": "INSTAMART",
    "subTitle": "GET ANYTHING INSTANTLY",
    "status": "FREE DELIVERY",
    "imagePath": "assets/image/pizzapng-removebg-preview.png"
  },
  {
    "title": "DINEOUT",
    "subTitle": "GIRF IS LIVE",
    "status": "FLAT 50% OFF",
    "imagePath": "assets/image/pizzapng-removebg-preview.png"
  },
  {
    "title": "GENIE",
    "subTitle": "PICK-UP & DROP",
    "status": "FAST",
    "imagePath": "assets/image/pizzapng-removebg-preview.png"
  },
];

class _SwiggyScreenState extends State<SwiggyScreen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mqData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.navigation_rounded,
                        color: Colors.deepOrange,
                      ),
                      Text(
                        "Khanpur",
                        style: myTextStyle25(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Text(
                    "Kharar, Punjab 140301, India",
                    style: myTextStyle15(fontColor: Colors.black54),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.account_circle_sharp,
              size: 30,
            )
          ],
        ),
      ),

      ///---------------------------BODY--------------------------------///
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// ------------------------Search--------------------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search for 'Paneer'",
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: Colors.black54),
                      borderRadius: BorderRadius.circular(10)),
                  disabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: Colors.black54),
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: Colors.black54),
                      borderRadius: BorderRadius.circular(10)),
                  suffixIcon: SizedBox(
                    width: mqData.size.width * 0.3,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.search,
                          size: 30,
                        ),
                        SizedBox(width: 5),
                        VerticalDivider(color: Colors.black54),
                        SizedBox(width: 5),
                        Icon(
                          Icons.mic,
                          size: 30,
                          color: Colors.deepOrange,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            /// Image Slider
            const ImageSlider(),

            /// -----------------------Grid view---------------------------///
            GridView.builder(
              itemCount: cardData.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),  // Disable scrolling in GridView
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              cardData[index]['title'],
                              style: myTextStyle25(),
                            ),
                            Text(
                              cardData[index]['subTitle'],
                              style: myTextStyle15(fontColor: Colors.black54),
                            ),
                            Text(
                              cardData[index]['status'],
                              style: myTextStyle15(fontColor: Colors.red),
                            ),
                          ],
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Image.asset(
                            cardData[index]['imagePath'],
                            height: mqData.size.height * 0.1,
                            width: mqData.size.width * 0.2,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 20),

            Center(
              child: Text(
                "FEATURED FOR YOU",
                style: myTextStyle30(fontColor: Colors.black87),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
