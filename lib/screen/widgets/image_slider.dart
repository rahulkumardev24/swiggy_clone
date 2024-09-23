import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> sliderItems = [
      // First
      Column(
        mainAxisAlignment: MainAxisAlignment.center ,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: const DecorationImage(
                image: AssetImage("assets/image/poster1.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      // Second
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: const DecorationImage(
                image: AssetImage("assets/image/poster2.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      // Third
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: const DecorationImage(
                image: AssetImage("assets/image/poster3.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      // Fourth
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: const DecorationImage(
                image: AssetImage("assets/image/poster4.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    ];

    return CarouselSlider(
      items: sliderItems,
      options: CarouselOptions(
        height: 180,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 4),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true, // Center image will be larger
        enlargeFactor: 0.3,
        onPageChanged: (index, reason) {},
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
