import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BottomAdds extends StatefulWidget {
  const BottomAdds({Key? key}) : super(key: key);

  @override
  State<BottomAdds> createState() => _BottomAddsState();
}

class _BottomAddsState extends State<BottomAdds> {
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'asset/immage/hotel1.jpeg',
      'asset/immage/hotel2.jpeg',
      'asset/immage/hotel3.jpeg',
      'asset/immage/hotel4.jpeg',
      'asset/immage/hotel5.jpeg',
      // Add more image paths as needed
    ];

    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CarouselSlider(
          options: CarouselOptions(
            height: 200.0,
            // Set the height of the slider
            enableInfiniteScroll: true,
            // Allow infinite scrolling
            autoPlay: true,
            // Auto-play the slider
            autoPlayInterval: Duration(seconds: 10),
            // Auto-play interval
            autoPlayAnimationDuration: Duration(milliseconds: 1800),
            // Animation duration
            pauseAutoPlayOnTouch: true,
            // Pause auto-play on touch
            enlargeCenterPage: true, // Enlarge the center image
          ),
          items: images.map((image) {
            return Builder(
              builder: (BuildContext context) {
                return Stack(children: [
                  Positioned.fill(
                    child: ClipRect(
                        child: Container(
                            height: 150,
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: Image.asset(
                              image,
                              fit: BoxFit.cover,
                            ))),
                  ),
                   Positioned(
                      top: 150,
                      child: Container(
                        width:300,
                        decoration: BoxDecoration(color: Colors.grey[500]),
                        child: Text(
                          'Some Message Comes with \n advertisement ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            height: 1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ))
                ]); // You can use Image.network() for remote images
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
