import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

class Home extends StatefulWidget {
  List<String> selectedReportList;
  Home({required this.selectedReportList});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool Visibled = false;
  bool isShowAll = false;
  String? _selectedOption;
  bool isVisible = false;
  // Initial Selected Value
  String dropdownvalue = '2 Km';

// List of items in our dropdown men
  var items = [
    '1 Km',
    '2 Km',
    '3 Km',
    '4 Km',
    '5 Km',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            PhosphorIcons.map_pin,
            color: Color(0xFF0672CB),
            size: 32.0,
          ),
          title: Container(
            width: MediaQuery.of(context).size.width*5,
            height: 100,
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.44,
                  child: Text("Narsingi-Puppalaguda Main Ro...",
                    overflow: TextOverflow.ellipsis, // new
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width*0.22,
                  // color: Colors.green,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      // Initial Value
                      value: dropdownvalue,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for "Beauty"',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: CarouselSlider(
                items: [
                  Container(
                    color: Colors.green,
                  ),
                  Container(
                    color: Colors.yellow,
                  ),
                  Container(
                    color: Colors.orangeAccent,
                  )
                ],
                options: CarouselOptions(
                  height: 150,
                  viewportFraction: 1.0,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 1),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  pauseAutoPlayOnTouch: true,
                  aspectRatio: 16 / 9,
                  onPageChanged: (index, reason) {
                    // Handle page change
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Text(
                "Selected Services",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Flexible(
              child: GridView.builder(
                shrinkWrap: true,
                physics: AlwaysScrollableScrollPhysics(),
                itemCount: isShowAll ? (widget.selectedReportList.length) : 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (index == 7) {
                          isShowAll = true;
                        } else if (index ==
                            (widget.selectedReportList.length - 1)) {
                          isShowAll = false;
                        }
                      });
                    },
                    child: Container(
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              color: Colors.blueGrey,
                              height: 50,
                              width: 50,
                            ),

                            check(index),
                            // Text(widget.selectedReportList[index]),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Get 10% on your first service",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Trending Services",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  TextButton(
                    child: Text('See All', style: TextStyle(color: Color(0xFF0672CB)),),
                    onPressed: () {
                      setState(() {
                        Visibled = !Visibled;
                      });
                    },
                  ),
                ],
              ),
            ),
            hide(context),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Visibility(
                visible: Visibled,
                child: Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0, right: 0),
                    child: Column(
                      children: <Widget>[
                        hide(context),
                        SizedBox(
                          height: 20,
                        ),
                      ], //<widget>[]
                    ),
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                //add image
                Container(
                  // height: 150,
                  child: Image.asset('assets/mechantapply.png'),

                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Positioned(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Want to become a Merchant?',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text('Earn more revenue',style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                            ),),
                            Text(
                              'Refer and get 1@ per order',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,),
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.all(16),
                                  width: 200,
                                  height: 200,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Select an option',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      SizedBox(height: 16),
                                      ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            _selectedOption = 'Option 1';
                                          });
                                          Navigator.pop(context);
                                        },
                                        child: Text('Option 1'),
                                      ),
                                      SizedBox(height: 8),
                                      ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            _selectedOption = 'Option 2';
                                          });
                                          Navigator.pop(context);
                                        },
                                        child: Text('Option 2'),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: _selectedOption == null
                            ? Text('Apply')
                            : Text('Selected: $_selectedOption'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }

  Widget check(int index) {
    String text;

    if (index == 7) {
      return isShowAll ? Text(widget.selectedReportList[index]) : Text("more");
    } else {
      print(index);
      return Text(widget.selectedReportList[index]);
    }
  }

  Widget hide(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left : 17, right: 17),
      child: Row(
        children: <Widget>[
          Column(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blueGrey,
                ), //BoxDecoration
              ),
              SizedBox(
                height: 10,
              ),
              Text("Food")
            ],
          ),
          //SizedBox
          Column(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blueGrey,
                ), //BoxDecoration
              ),
              SizedBox(
                height: 10,
              ),
              Text("Medical"),
            ],
          ),
          Column(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blueGrey,
                ), //BoxDecoration
              ),
              SizedBox(
                height: 10,
              ),
              Text("Travel")
            ],
          ),
          Column(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blueGrey,
                ), //BoxDecoration
              ),
              SizedBox(
                height: 10,
              ),
              Text("Security")
            ],
          ),
          Column(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blueGrey,
                ), //BoxDecoration
              ),
              SizedBox(
                height: 10,
              ),
              Text("Packers")
            ],
          ),
        ],
        //<Widget>[]
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
//
// class Home extends StatefulWidget {
//     List<String> selectedReportList;
//   Home({required this.selectedReportList});
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   bool isVisible = false;
//   // Initial Selected Value
//   String dropdownvalue = '2 Km';
//
// // List of items in our dropdown men
//   var items = [
//     '1 Km',
//     '2 Km',
//     '3 Km',
//     '4 Km',
//     '5 Km',
//   ];
//
//   bool isShowAll = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           leading: Icon(
//             PhosphorIcons.map_pin,
//             color: Color(0xFF0672CB),
//             size: 32.0,
//           ),
//           title: Container(
//             width: MediaQuery.of(context).size.width*5,
//             height: 100,
//             child: Row(
//               children: [
//                 Container(
//                   width: MediaQuery.of(context).size.width*0.44,
//                   child: Text("Narsingi-Puppalaguda Main Ro...",
//                     overflow: TextOverflow.ellipsis, // new
//                     style: TextStyle(fontSize: 15, color: Colors.black),
//                   ),
//                 ),
//                 Spacer(),
//                 Container(
//                   width: MediaQuery.of(context).size.width*0.22,
//                   // color: Colors.green,
//                   child: DropdownButtonHideUnderline(
//                     child: DropdownButton(
//                       // Initial Value
//                       value: dropdownvalue,
//                       // Down Arrow Icon
//                       icon: const Icon(Icons.keyboard_arrow_down),
//
//                       // Array list of items
//                       items: items.map((String items) {
//                         return DropdownMenuItem(
//                           value: items,
//                           child: Text(items),
//                         );
//                       }).toList(),
//                       // After selecting the desired option,it will
//                       // change button value to selected value
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           dropdownvalue = newValue!;
//                         });
//                       },
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           backgroundColor: Colors.white,
//         ),
//         body: Container(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(
//                     left: 20, right: 20, top: 20, bottom: 10),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     hintText: 'Search for "Beauty"',
//                     prefixIcon: Icon(Icons.search),
//                     border: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.grey),
//                       borderRadius: BorderRadius.all(Radius.circular(10)),
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
//                 child: CarouselSlider(
//                   items: [
//                     Container(
//                       color: Colors.green,
//                     ),
//                     Container(
//                       color: Colors.yellow,
//                     ),
//                     Container(
//                       color: Colors.orangeAccent,
//                     )
//                   ],
//                   options: CarouselOptions(
//                     height: 150,
//                     viewportFraction: 1.0,
//                     autoPlay: true,
//                     autoPlayInterval: Duration(seconds: 1),
//                     autoPlayAnimationDuration: Duration(milliseconds: 800),
//                     autoPlayCurve: Curves.fastOutSlowIn,
//                     pauseAutoPlayOnTouch: true,
//                     aspectRatio: 16 / 9,
//                     onPageChanged: (index, reason) {
//                       // Handle page change
//                     },
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
//                 child: Text(
//                   "Selected Services",
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               Flexible(
//                 child: GridView.builder(
//                   itemCount: isShowAll ? (widget.selectedReportList.length) : 8,
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 4,
//                     crossAxisSpacing: 10,
//                     mainAxisSpacing: 10,
//                   ),
//                   itemBuilder: (context, index) {
//                     return GestureDetector(
//                       onTap: () {
//                         setState(() {
//                           if (index == 7) {
//                             isShowAll = true;
//                           } else if (index ==
//                               (widget.selectedReportList.length - 1)) {
//                             isShowAll = false;
//                           }
//                         });
//                       },
//                       child: Container(
//                         child: Center(
//                           child: Column(
//                             children: [
//                               Container(
//                                 color: Colors.blueGrey,
//                                 height: 50,
//                                 width: 50,
//                               ),
//
//                               check(index),
//                               // Text(widget.selectedReportList[index]),
//                             ],
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               // Container(
//               //   height: 100,
//               //   color: Colors.green,
//               // )
//             ],
//
//           ),
//         )
//     );
//   }
//
//   Widget check(int index) {
//     String text;
//
//     if (index == 7) {
//       return isShowAll ? Text(widget.selectedReportList[index]) : Text("more");
//     } else {
//       print(index);
//       return Text(widget.selectedReportList[index]);
//     }
//   }
// }
//
//
//
//
// // import 'package:flutter/material.dart';
// // import 'package:flutter_image_slider/carousel.dart';
// // import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
// //
// // class Home extends StatefulWidget {
// //   @override
// //   _HomeState createState() => _HomeState();
// // }
// //
// // class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin<Home> {
// //   bool isVisible = false;
// //   // Initial Selected Value
// //   String dropdownvalue = '2 Km';
// //
// // // List of items in our dropdown men
// //   var items = [
// //     '1 Km',
// //     '2 Km',
// //     '3 Km',
// //     '4 Km',
// //     '5 Km',
// //   ];
// //
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     super.build(context);
// //     return Scaffold(
// //       appBar: AppBar(
// //         leading: Icon(
// //           PhosphorIcons.map_pin,
// //           color: Color(0xFF0672CB),
// //           size: 32.0,
// //         ),
// //         title: Container(
// //           width: MediaQuery.of(context).size.width*5,
// //           height: 100,
// //           child: Row(
// //             children: [
// //               Container(
// //                 width: MediaQuery.of(context).size.width*0.44,
// //                 child: Text("asfdddddddddddddddddsfasddfdfdsfdsdffd",
// //
// //                   overflow: TextOverflow.ellipsis, // new
// //                   style: TextStyle(fontSize: 25, color: Colors.black),
// //                 ),
// //               ),
// //               Spacer(),
// //               Container(
// //                 width: MediaQuery.of(context).size.width*0.22,
// //                 // color: Colors.green,
// //                 child: DropdownButtonHideUnderline(
// //                   child: DropdownButton(
// //                     // Initial Value
// //                     value: dropdownvalue,
// //                     // Down Arrow Icon
// //                     icon: const Icon(Icons.keyboard_arrow_down),
// //
// //                     // Array list of items
// //                     items: items.map((String items) {
// //                       return DropdownMenuItem(
// //                         value: items,
// //                         child: Text(items),
// //                       );
// //                     }).toList(),
// //                     // After selecting the desired option,it will
// //                     // change button value to selected value
// //                     onChanged: (String? newValue) {
// //                       setState(() {
// //                         dropdownvalue = newValue!;
// //                       });
// //                     },
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //         backgroundColor: Colors.white,
// //       ),
// //       body: SingleChildScrollView(
// //         scrollDirection: Axis.vertical,
// //         child: Container(
// //           color: Colors.white,
// //           child: Column(
// //             children: [
// //               Padding(
// //                 padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
// //                 child: TextFormField(
// //                   // style: TextStyle(color: Colors.black),
// //                     decoration: InputDecoration(
// //                         prefixIcon: const Icon(Icons.search_outlined, color: Colors.grey,),
// //                         contentPadding: EdgeInsets.all(14),
// //                         hintText: "Search for Beauty",
// //                         hintStyle: TextStyle(color: Colors.grey,
// //                           fontSize: 18,
// //                           ),
// //                         border: OutlineInputBorder(
// //                           borderRadius: BorderRadius.circular(5),
// //                           borderSide: BorderSide(color: Colors.grey),
// //                         )),
// //                 ),
// //               ),
// //
// //               SizedBox(height:20),
// //               Container(
// //
// //                 child: Column(
// //                   children: [
// //                     Container(
// //                       height:250,
// //                       child: Carousel(
// //                         indicatorBarColor: Colors.white,
// //                         autoScrollDuration: Duration(seconds: 2),
// //                         animationPageDuration: Duration(milliseconds: 500),
// //                         activateIndicatorColor: Colors.blue,
// //                         animationPageCurve: Curves.bounceInOut,
// //                         // indicatorBarHeight: 50,
// //                         // indicatorHeight: 20,
// //                         indicatorWidth: 20,
// //                         unActivatedIndicatorColor: Colors.grey,
// //                         stopAtEnd: false,
// //                         autoScroll: true,
// //                         items: [
// //
// //                           Container(
// //                             height:50,
// //                             child: FittedBox(
// //                               fit: BoxFit.fill,
// //                               // color: Colors.blue,
// //                              child: Image.asset("assets/second_img.png"),
// //                               // child: Image.network('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
// //                             ),
// //                           ),
// //
// //                           Container(
// //                             height:50,
// //                             child: FittedBox(
// //                               fit: BoxFit.fill,
// //                               // color: Colors.blue,
// //                               child: Image.asset("assets/second_img.png"),
// //                               // child: Image.network('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
// //                             ),
// //                           ),
// //
// //                           Container(
// //                             height:50,
// //                             child: FittedBox(
// //                               fit: BoxFit.fill,
// //                               // color: Colors.blue,
// //                               child: Image.asset("assets/second_img.png"),
// //                               // child: Image.network('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
// //                             ),
// //                           ),
// //
// //                           Container(
// //                             height:50,
// //                             child: FittedBox(
// //                               fit: BoxFit.fill,
// //                               // color: Colors.blue,
// //                               child: Image.asset("assets/second_img.png"),
// //                               // child: Image.network('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
// //                             ),
// //                           ),
// //
// //
// //
// //                         ],
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //
// //               Padding(
// //                 padding: const EdgeInsets.only( left: 20, right: 20),
// //                 child: Align(
// //                     alignment: Alignment.centerLeft,
// //                     child: Text("Selected Services", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)),
// //               ),
// //               Padding(
// //               padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
// //               child: Row(
// //                 children: <Widget>[
// //                   Container(
// //                     width: MediaQuery.of(context).size.width*0.15,
// //                     // height: MediaQuery.of(context).size.height*0.115,
// //                     height: 70,
// //                     decoration: BoxDecoration(
// //                       borderRadius: BorderRadius.circular(2),
// //                       color: Color(0xFFE6F1FA),
// //                     ),
// //                     child: Center(
// //                       child: Container(
// //                         width: MediaQuery.of(context).size.width*0.1,
// //                         // height: MediaQuery.of(context).size.height*0.115,
// //                         height: 50,
// //                         decoration: BoxDecoration(
// //                           borderRadius: BorderRadius.circular(2),
// //                           color: Color(0xFF0672CB),
// //                         ), //BoxDecoration
// //                       ),
// //                     ),
// //                   ),
// //                   Container(
// //                     width: MediaQuery.of(context).size.width*0.15,
// //                     // height: MediaQuery.of(context).size.height*0.115,
// //                     height: 70,
// //                     decoration: BoxDecoration(
// //                       borderRadius: BorderRadius.circular(2),
// //                       color: Color(0xFFE6F1FA),
// //                     ),
// //                     child: Center(
// //                       child: Container(
// //                         width: MediaQuery.of(context).size.width*0.1,
// //                         // height: MediaQuery.of(context).size.height*0.115,
// //                         height: 50,
// //                         decoration: BoxDecoration(
// //                           borderRadius: BorderRadius.circular(2),
// //                           color: Color(0xFF0672CB),
// //                         ), //BoxDecoration
// //                       ),
// //                     ),
// //                   ),
// //                   Container(
// //                     width: MediaQuery.of(context).size.width*0.15,
// //                     // height: MediaQuery.of(context).size.height*0.115,
// //                     height: 70,
// //                     decoration: BoxDecoration(
// //                       borderRadius: BorderRadius.circular(2),
// //                       color: Color(0xFFE6F1FA),
// //                     ),
// //                     child: Center(
// //                       child: Container(
// //                         width: MediaQuery.of(context).size.width*0.1,
// //                         // height: MediaQuery.of(context).size.height*0.115,
// //                         height: 50,
// //                         decoration: BoxDecoration(
// //                           borderRadius: BorderRadius.circular(2),
// //                           color: Color(0xFF0672CB),
// //                         ), //BoxDecoration
// //                       ),
// //                     ),
// //                   ),
// //                   Container(
// //                     width: MediaQuery.of(context).size.width*0.15,
// //                     // height: MediaQuery.of(context).size.height*0.115,
// //                     height: 70,
// //                     decoration: BoxDecoration(
// //                       borderRadius: BorderRadius.circular(2),
// //                       color: Color(0xFFE6F1FA),
// //                     ),
// //                     child: Center(
// //                       child: Container(
// //                         width: MediaQuery.of(context).size.width*0.1,
// //                         // height: MediaQuery.of(context).size.height*0.115,
// //                         height: 50,
// //                         decoration: BoxDecoration(
// //                           borderRadius: BorderRadius.circular(2),
// //                           color: Color(0xFF0672CB),
// //                         ), //BoxDecoration
// //                       ),
// //                     ),
// //                   ),
// //                 ], //<Widget>[]
// //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               ),
// //             ),
// //               Padding(
// //                 padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
// //                 child: Row(
// //                   children: <Widget>[
// //                     Container(
// //                       width: MediaQuery.of(context).size.width*0.15,
// //                       // height: MediaQuery.of(context).size.height*0.115,
// //                       height: 70,
// //                       decoration: BoxDecoration(
// //                         borderRadius: BorderRadius.circular(2),
// //                         color: Color(0xFFE6F1FA),
// //                       ),
// //                       child: Center(
// //                         child: Container(
// //                           width: MediaQuery.of(context).size.width*0.1,
// //                           // height: MediaQuery.of(context).size.height*0.115,
// //                           height: 50,
// //                           decoration: BoxDecoration(
// //                             borderRadius: BorderRadius.circular(2),
// //                             color: Color(0xFF0672CB),
// //                           ), //BoxDecoration
// //                         ),
// //                       ),
// //                     ),
// //                     Container(
// //                       width: MediaQuery.of(context).size.width*0.15,
// //                       // height: MediaQuery.of(context).size.height*0.115,
// //                       height: 70,
// //                       decoration: BoxDecoration(
// //                         borderRadius: BorderRadius.circular(2),
// //                         color: Color(0xFFE6F1FA),
// //                       ),
// //                       child: Center(
// //                         child: Container(
// //                           width: MediaQuery.of(context).size.width*0.1,
// //                           // height: MediaQuery.of(context).size.height*0.115,
// //                           height: 50,
// //                           decoration: BoxDecoration(
// //                             borderRadius: BorderRadius.circular(2),
// //                             color: Color(0xFF0672CB),
// //                           ), //BoxDecoration
// //                         ),
// //                       ),
// //                     ),
// //                     Container(
// //                       width: MediaQuery.of(context).size.width*0.15,
// //                       // height: MediaQuery.of(context).size.height*0.115,
// //                       height: 70,
// //                       decoration: BoxDecoration(
// //                         borderRadius: BorderRadius.circular(2),
// //                         color: Color(0xFFE6F1FA),
// //                       ),
// //                       child: Center(
// //                         child: Container(
// //                           width: MediaQuery.of(context).size.width*0.1,
// //                           // height: MediaQuery.of(context).size.height*0.115,
// //                           height: 50,
// //                           decoration: BoxDecoration(
// //                             borderRadius: BorderRadius.circular(2),
// //                             color: Color(0xFF0672CB),
// //                           ), //BoxDecoration
// //                         ),
// //                       ),
// //                     ),
// //                     GestureDetector(
// //                       onTap: ()
// //                       {
// //                         setState(() {
// //                           isVisible = !isVisible;
// //                         });
// //                       },
// //                       child: Container(
// //                         width: MediaQuery.of(context).size.width*0.15,
// //                         // height: MediaQuery.of(context).size.height*0.115,
// //                         height: 70,
// //                         decoration: BoxDecoration(
// //                           borderRadius: BorderRadius.circular(2),
// //                           color: Color(0xFFE6F1FA),
// //                         ),
// //                         child: Center(
// //                           child: Container(
// //                             width: MediaQuery.of(context).size.width*0.1,
// //                             // height: MediaQuery.of(context).size.height*0.115,
// //                             height: 50,
// //                             decoration: BoxDecoration(
// //                               borderRadius: BorderRadius.circular(2),
// //                               color: Color(0xFF0672CB),
// //                             ), //BoxDecoration
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                   ], //<Widget>[]
// //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                 ),
// //               ),
// //
// //               Padding(
// //                 padding: const EdgeInsets.only(top: 20),
// //                 child: Visibility(
// //                   visible: isVisible,
// //                   child: Flexible(
// //                     child: Padding(
// //                       padding: const EdgeInsets.only(left: 20, right: 20),
// //                       child: Column(
// //                         children: <Widget>[
// //                           hide(context),
// //                           SizedBox(height: 20,),
// //                           hide(context),
// //                           SizedBox(height: 20,),
// //                           hide(context),
// //                           SizedBox(height: 20,),
// //                           hide(context),
// //                           SizedBox(height: 20,),
// //                         ], //<widget>[]
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //               Container(
// //                 height: 100,
// //                 color: Color(0xFF1F9653),
// //                 child: Padding(
// //                   padding: EdgeInsets.only(top: 18, bottom: 18, left:20, right: 20),
// //                   child: FittedBox(
// //                       fit: BoxFit.fill,
// //                       child: Image.asset("assets/mini_ad1.png")),
// //                 ),
// //               ),
// //               SizedBox(height: 250,),
// //
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// //
// //   Widget hide(BuildContext context) {
// //     return Row(
// //       children: <Widget>[
// //         Container(
// //           width: MediaQuery.of(context).size.width*0.15,
// //           // height: MediaQuery.of(context).size.height*0.115,
// //           height: 70,
// //           decoration: BoxDecoration(
// //             borderRadius: BorderRadius.circular(2),
// //             color: Color(0xFFE6F1FA),
// //           ),
// //           child: Center(
// //             child: Container(
// //               width: MediaQuery.of(context).size.width*0.1,
// //               // height: MediaQuery.of(context).size.height*0.115,
// //               height: 50,
// //               decoration: BoxDecoration(
// //                 borderRadius: BorderRadius.circular(2),
// //                 color: Color(0xFF0672CB),
// //               ), //BoxDecoration
// //             ),
// //           ),
// //         ),
// //         Container(
// //           width: MediaQuery.of(context).size.width*0.15,
// //           // height: MediaQuery.of(context).size.height*0.115,
// //           height: 70,
// //           decoration: BoxDecoration(
// //             borderRadius: BorderRadius.circular(2),
// //             color: Color(0xFFE6F1FA),
// //           ),
// //           child: Center(
// //             child: Container(
// //               width: MediaQuery.of(context).size.width*0.1,
// //               // height: MediaQuery.of(context).size.height*0.115,
// //               height: 50,
// //               decoration: BoxDecoration(
// //                 borderRadius: BorderRadius.circular(2),
// //                 color: Color(0xFF0672CB),
// //               ), //BoxDecoration
// //             ),
// //           ),
// //         ),
// //         Container(
// //           width: MediaQuery.of(context).size.width*0.15,
// //           // height: MediaQuery.of(context).size.height*0.115,
// //           height: 70,
// //           decoration: BoxDecoration(
// //             borderRadius: BorderRadius.circular(2),
// //             color: Color(0xFFE6F1FA),
// //           ),
// //           child: Center(
// //             child: Container(
// //               width: MediaQuery.of(context).size.width*0.1,
// //               // height: MediaQuery.of(context).size.height*0.115,
// //               height: 50,
// //               decoration: BoxDecoration(
// //                 borderRadius: BorderRadius.circular(2),
// //                 color: Color(0xFF0672CB),
// //               ), //BoxDecoration
// //             ),
// //           ),
// //         ),
// //         Container(
// //           width: MediaQuery.of(context).size.width*0.15,
// //           // height: MediaQuery.of(context).size.height*0.115,
// //           height: 70,
// //           decoration: BoxDecoration(
// //             borderRadius: BorderRadius.circular(2),
// //             color: Color(0xFFE6F1FA),
// //           ),
// //           child: Center(
// //             child: Container(
// //               width: MediaQuery.of(context).size.width*0.1,
// //               // height: MediaQuery.of(context).size.height*0.115,
// //               height: 50,
// //               decoration: BoxDecoration(
// //                 borderRadius: BorderRadius.circular(2),
// //                 color: Color(0xFF0672CB),
// //               ), //BoxDecoration
// //             ),
// //           ),
// //         ),
// //       ], //<Widget>[]
// //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //     );
// //   }
// //   @override
// //   bool get wantKeepAlive => true;
// // }
// //
// //
// //
// //
// //
// //
// //
// // class HomeScreen extends StatefulWidget {
// //   @override
// //   _HomeScreenState createState() => _HomeScreenState();
// // }
// //
// // class _HomeScreenState extends State<HomeScreen> {
// //   bool isVisible = false;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return SingleChildScrollView(
// //       scrollDirection: Axis.vertical,
// //       child: Container(
// //         child: Padding(
// //           padding: const EdgeInsets.only(top: 20),
// //           child: Column(
// //             children: [
// //               Padding(
// //                 padding: const EdgeInsets.only(right: 20),
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.end,
// //                   children: [
// //                     ElevatedButton(
// //                       child: Text('See All'),
// //                       onPressed: () {
// //                         setState(() {
// //                           isVisible = !isVisible;
// //                         });
// //                       },
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //               Padding(
// //                 padding: const EdgeInsets.only(top: 20),
// //                 child: Visibility(
// //                   visible: isVisible,
// //                   child: Flexible(
// //                     child: Padding(
// //                       padding: const EdgeInsets.only(left: 20, right: 20),
// //                       child: Column(
// //                         children: <Widget>[
// //                           hide(context),
// //                           SizedBox(height: 20,),
// //                           hide(context),
// //                           SizedBox(height: 20,),
// //                           hide(context),
// //                           SizedBox(height: 20,),
// //                           hide(context),
// //                           SizedBox(height: 20,),
// //                         ], //<widget>[]
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// //   Widget hide(BuildContext context) {
// //     return Row(
// //       children: <Widget>[
// //         Container(
// //           width: 50,
// //           height: 50,
// //           decoration: BoxDecoration(
// //             borderRadius: BorderRadius.circular(10),
// //             color: Colors.blueGrey,
// //           ), //BoxDecoration
// //         ),
// //
// //         Container(
// //             width: 50,
// //             height: 50,
// //             decoration: BoxDecoration(
// //               borderRadius: BorderRadius.circular(10),
// //               color: Colors.blueGrey,
// //             ),
// //         ),
// //
// //         Container(
// //             width: 50,
// //             height: 50,
// //             decoration: BoxDecoration(
// //               borderRadius: BorderRadius.circular(10),
// //               color: Colors.blueGrey,
// //             ),
// //         ),
// //         Container(
// //             width: 50,
// //             height: 50,
// //             decoration: BoxDecoration(
// //               borderRadius: BorderRadius.circular(10),
// //               color: Colors.blueGrey,
// //             ), ////Container
// //         ),
// //       ], //<Widget>[]
// //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //     );
// //   }
// // }