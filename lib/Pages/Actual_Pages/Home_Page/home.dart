import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

import '../../Testing.dart';

class Home extends StatefulWidget {
  List<String> sortedReportList;
  Home({required this.sortedReportList});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool Visibled = false;
  bool isShowAll = false;
  String? _selectedOption;
  bool isVisible = false;

  String dropdownvalue = '2 Km';

  var items = [
    '1 Km',
    '2 Km',
    '3 Km',
    '4 Km',
    '5 Km',
  ];

  // enum Fruit {
  // apple,
  // banana,
  // }

  var status = [false, false, false, false, false];

  var results = [
    '1 Km',
    '2 Km',
    '3 Km',
    '4 Km',
    '5 Km',
  ];
  bool showWidget = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          PhosphorIcons.map_pin,
          color: Color(0xFF0672CB),
          size: 32.0,
        ),
        title: Container(
          width: MediaQuery.of(context).size.width * 5,
          height: 100,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Container(
              //   // width: MediaQuery.of(context).size.width * 0.44,
              //   child: Text(
              //     "Narsingi-Puppalaguda Main Ro...",
              //     overflow: TextOverflow.ellipsis,
              //     style: TextStyle(fontSize: 15, color: Colors.black),
              //   ),
              // ),
              new Container(
              width: MediaQuery.of(context).size.width * 0.44,
              padding: new EdgeInsets.only(right: 13.0),
                child: new Text(
                  'Narsingi-Puppalaguda Main Ro',
                  overflow: TextOverflow.ellipsis,
                  style: new TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Roboto',
                    color: new Color(0xFF212121),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),


              Flexible(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),

                  child: Container(
                      // width: MediaQuery.of(context).size.width * 0.25,
                      child: Row(
                        children: [
                          SizedBox(
                              height: 30,
                              width: 30,
                              child: Image.asset("assets/kmrange.png")),
                          Text("2 Km"),
                          Icon(Icons.arrow_drop_down, size: 40,),
                        ],
                      ),
                    ),
                    onPressed: (){
                        setState(() {
                          showWidget = !showWidget;

                        });
                      },

                  ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Stack(

        children: [
          ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
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
                    ),
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
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: isShowAll ? (widget.sortedReportList.length) : 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(
                            () {
                          if (index == 7) {
                            isShowAll = true;
                          } else if (index ==
                              (widget.sortedReportList.length - 1)) {
                            isShowAll = false;
                          }
                        },
                      );
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
                          ],
                        ),
                      ),
                    ),
                  );
                },
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
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  "Trending Services",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    trendBox("Salon"),
                    trendBox("Electrical"),
                    trendBox("AC Repair"),
                    trendBox("Hair & Skin"),
                    trendBox("TV Installing"),
                  ],
                ),
              ),
              Container(
                // height: 200,
                child: Stack(
                  children: [
                    Container(
                      child: Image.asset('assets/mechantapply.png'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '  Want to become a Merchant?',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '•  Earn more revenue',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                ),
                              ),
                              Text(
                                '•  Refer and get 1@ per order',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                ),
                              ),
                              ElevatedButton(
                                child: Text("Apply"),
                                onPressed: (){},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          showWidget ? popUp() : Container(),
        ],
      ),
    );
  }
  Widget check(int index) {
    String text;

    if (index == 7) {
      return isShowAll ? Text(widget.sortedReportList[index],style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),) : Text("more",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600),);
    } else {
      print(index);
      return Center(
        child: Padding(
          padding: const EdgeInsets.only(top:3, left: 2, right: 2),
          child: Text(widget.sortedReportList[index], style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600),),
        ),
      );
    }
  }

  Widget trendBox(String text){
    return Column(
      children: [
        Container(height: 40,width: 40,color: Colors.blueGrey,),
        Text(text),
      ],
    );
  }


  popUp() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.all(Radius.circular(10)),
          //   border: Border.all(
          //     color: Colors.white,
          //   ),
          //   color: Color(0xFFFFFFFF),
          // ),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9.0),

            boxShadow: [

              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: Offset(0.0, 0.0),
                blurRadius: 100,
              ),
              BoxShadow(
                  color: Colors.white
              ),
            ],
          ),

          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child:
            SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0, left: 20, top: 17, bottom: 10),
                        child: Text("Distance"
                          ,style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 23,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: (){
                          setState(() {
                            showWidget = !showWidget;
                          });
                        },

                        icon: const Icon(Icons.close,size: 25,),)
                    ],
                  ),

                  list(),
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          child: OutlinedButton(
                            onPressed: (){
                              setState(() {
                                showWidget = !showWidget;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              child: Text(
                                "Cancel",
                                style:
                                TextStyle(color: Color(0xFF0672CB), fontSize: 19),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              border: Border.all(
                                color: Color(0xFF0672CB),
                              )),
                        ),
                        Container(
                          height: 50,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              child: Text(
                                ('Save'),
                                style: TextStyle(color: Colors.white, fontSize: 19),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Color(0xFF0672CB),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  list() {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: results.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: GestureDetector(
                onTap: () {
                  status = [
                    false,
                    false,
                    false,
                    false,
                    false
                  ];
                  print(index);
                  setState(() {
                    status[index] = true;
                  });
                  status[index] = true;
                },
                child: status[index] == true
                    ? const ImageIcon(
                  AssetImage(
                      "assets/1.png"),
                  color: Color(0xFF0672CB),
                  size: 24,
                )
                    : ImageIcon(
                  AssetImage(
                      "assets/2.png"),
                  color: Color(0xFF0672CB),
                  size: 24,
                )),
            title: Container(child: Text(results[index])),
          );
        });
  }

}


// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
//
// class Home extends StatefulWidget {
//   List<String> selectedReportList;
//   Home({required this.selectedReportList});
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   bool Visibled = false;
//   bool isShowAll = false;
//   String? _selectedOption;
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
//         body: ListView(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 20, right: 20, top: 20, bottom: 10),
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintText: 'Search for "Beauty"',
//                   prefixIcon: Icon(Icons.search),
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.grey),
//                     borderRadius: BorderRadius.all(Radius.circular(10)),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
//               child: CarouselSlider(
//                 items: [
//                   Container(
//                     color: Colors.green,
//                   ),
//                   Container(
//                     color: Colors.yellow,
//                   ),
//                   Container(
//                     color: Colors.orangeAccent,
//                   )
//                 ],
//                 options: CarouselOptions(
//                   height: 150,
//                   viewportFraction: 1.0,
//                   autoPlay: true,
//                   autoPlayInterval: Duration(seconds: 1),
//                   autoPlayAnimationDuration: Duration(milliseconds: 800),
//                   autoPlayCurve: Curves.fastOutSlowIn,
//                   pauseAutoPlayOnTouch: true,
//                   aspectRatio: 16 / 9,
//                   onPageChanged: (index, reason) {
//                     // Handle page change
//                   },
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
//               child: Text(
//                 "Selected Services",
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//             ),
//             Flexible(
//               child: GridView.builder(
//                 shrinkWrap: true,
//                 physics: AlwaysScrollableScrollPhysics(),
//                 itemCount: isShowAll ? (widget.selectedReportList.length) : 8,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 4,
//                   crossAxisSpacing: 10,
//                   mainAxisSpacing: 10,
//                 ),
//                 itemBuilder: (context, index) {
//                   return GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         if (index == 7) {
//                           isShowAll = true;
//                         } else if (index ==
//                             (widget.selectedReportList.length - 1)) {
//                           isShowAll = false;
//                         }
//                       });
//                     },
//                     child: Container(
//                       child: Center(
//                         child: Column(
//                           children: [
//                             Container(
//                               color: Colors.blueGrey,
//                               height: 50,
//                               width: 50,
//                             ),
//
//                             check(index),
//                             // Text(widget.selectedReportList[index]),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             Container(
//                 color: Colors.green,
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     color: Colors.white,
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 20),
//                       child: Text(
//                         "Get 10% on your first service",
//                         style: TextStyle(
//                             fontSize: 15, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ),
//                 ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 20, top: 10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "Trending Services",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//             ),
//
//             Stack(
//               children: [
//                 //add image
//                 Container(
//                   // height: 150,
//                   child: Image.asset('assets/mechantapply.png'),
//                 ),
//
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Positioned(
//                       child: Padding(
//                         padding: const EdgeInsets.all(20.0),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Want to become a Merchant?',
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 17,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(
//                               height: 20,
//                             ),
//                             Text('Earn more revenue',style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 17,
//                             ),),
//                             Text(
//                               'Refer and get 1@ per order',
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 17,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 20.0,),
//                       child: ElevatedButton(
//                         onPressed: () {
//                           showDialog(
//                             context: context,
//                             builder: (BuildContext context) {
//                               return Center(
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(16),
//                                     color: Colors.white,
//                                   ),
//                                   padding: EdgeInsets.all(16),
//                                   width: 200,
//                                   height: 200,
//                                   child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Text(
//                                         'Select an option',
//                                         style: TextStyle(fontSize: 20),
//                                       ),
//                                       SizedBox(height: 16),
//                                       ElevatedButton(
//                                         onPressed: () {
//                                           setState(() {
//                                             _selectedOption = 'Option 1';
//                                           });
//                                           Navigator.pop(context);
//                                         },
//                                         child: Text('Option 1'),
//                                       ),
//                                       SizedBox(height: 8),
//                                       ElevatedButton(
//                                         onPressed: () {
//                                           setState(() {
//                                             _selectedOption = 'Option 2';
//                                           });
//                                           Navigator.pop(context);
//                                         },
//                                         child: Text('Option 2'),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               );
//                             },
//                           );
//                         },
//                         child: _selectedOption == null
//                             ? Text('Apply')
//                             : Text('Selected: $_selectedOption'),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ));
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
//
// }