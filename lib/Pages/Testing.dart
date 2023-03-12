import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';


class tyty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Image Slider',
      home: MySlider(),
    );
  }
}

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel Slider'),
      ),
      body: Container(
        child: Center(
            child: ListView(
              children: [
                SizedBox(
                  height: 200.0,
                  width: double.infinity,
                  child: Carousel(
                    dotSize: 6.0,
                    dotSpacing: 15.0,
                    dotPosition: DotPosition.bottomCenter,
                    images: [

                      Image.asset('assets/1.jpg', fit: BoxFit.cover),
                      Image.asset('assets/1.jpg', fit: BoxFit.cover),
                      Image.asset('assets/1.jpg', fit: BoxFit.cover),
                      Image.asset('assets/1.jpg', fit: BoxFit.cover),

                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}