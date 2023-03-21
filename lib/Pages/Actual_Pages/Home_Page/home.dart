import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:zazu99/Pages/Actual_Pages/Home_Page/Merchant%20Search/merchant_search_results.dart';
import 'package:zazu99/Pages/Actual_Pages/Home_Page/Merchant%20Search/search.dart';
import '../../Testing.dart';
import 'package:carousel_slider/carousel_slider.dart';


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

  List img=[
    Image.asset("assets/main_ad.png",fit: BoxFit.fill,),
    Image.asset("assets/main_ad.png",fit: BoxFit.fill,),
    Image.asset("assets/main_ad.png",fit: BoxFit.fill,),
    Image.asset("assets/main_ad.png",fit: BoxFit.fill,),
  ];
  String array1Name = 'Array 1';
  List<String> items1 = [
    "Apple",
    "Banana",
    "Cherry",
    "Durian",
    "Elderberry",
  ];
  String array2Name = 'Array 2';
  String array3Name = 'Array 3';
  List<String> items2 = [
    "pk",
    "ak",
    "bk",
    "ck",
    "kk",
  ];
  List<String> items3 = [
    "pp",
    "rrr",
    "cc",
    "dd",
    "hh",
  ];

  List<String> Beauty = [
    "Hair salons"
    "Aesthetic clinics"
    "Massage centres"
    "Skin care centers"
    "Makeup studios"
    "Body care centres"
    "Beauty supply stores"
    "Day Spas"
  ];
  List<String> combinedList = [];
  @override
  void initState() {
    super.initState();
    combinedList = [...items1, ...items2, ...items3, ...Beauty];
  }

  List<String> _searchResult = [];

  TextEditingController _searchController = TextEditingController();

  void _onSearchTextChanged(String text) {
    _searchResult.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }
    combinedList.forEach((item) {
      if (item.toLowerCase().contains(text.toLowerCase())) {
        _searchResult.add(item);
      }
    });
    setState(() {});
  }

  bool showWidget = false;

  // var items = [
  //   '1 Km',
  //   '2 Km',
  //   '3 Km',
  //   '4 Km',
  //   '5 Km',
  // ];

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


  int currentIndex = 0;
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              width: MediaQuery.of(context).size.width * 0.60,
              padding: new EdgeInsets.only(right: 13.0),
                child: new Text(
                  'Narsingi-Puppalaguda Main Ro',
                  overflow: TextOverflow.ellipsis,
                  style: new TextStyle(
                    fontSize: 18.0,
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
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: 25,
                              width: 25,
                              child: Image.asset("assets/kmrange.png")),
                          Flexible(
                            child: SizedBox(
                                width: 25,
                                child: Text("2 Km", style: TextStyle(fontSize: 10,),)),
                          ),
                          Flexible(child: Icon(Icons.arrow_drop_down, size: 30,),),
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
                padding:
                EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
                child: GestureDetector(
                  onTap: () {
                  },
                  child: TextField(
                    controller: _searchController,
                    onChanged: _onSearchTextChanged,
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
              ),
              Visibility(
                  visible: _searchResult.isNotEmpty,
                  child: Padding(
                    padding:
                    const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            color: Colors.black12,
                            width: 2.0,
                          ),
                        ),
                        height: 50,
                        child: search()),
                  )),




              // Padding(
              //   padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 14),
              //
              //
              //
              //
              //   child: TextField(
              //     decoration: InputDecoration(
              //       hintText: 'Search for "Beauty"',
              //       prefixIcon: Icon(Icons.search),
              //       border: OutlineInputBorder(
              //         borderSide: BorderSide(color: Colors.grey),
              //         borderRadius: BorderRadius.all(Radius.circular(10)),
              //       ),
              //     ),
              //   ),
              //
              //
              //
              //
              // ),




              //
              // Padding(
              //   padding:
              //   EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
              //   child: GestureDetector(
              //     onTap: () {
              //     },
              //     child: TextField(
              //       controller: _searchController,
              //       onChanged: _onSearchTextChanged,
              //       decoration: InputDecoration(
              //         hintText: 'Search for "Beauty"',
              //         prefixIcon: Icon(Icons.search),
              //         border: OutlineInputBorder(
              //           borderSide: BorderSide(color: Colors.grey),
              //           borderRadius: BorderRadius.all(Radius.circular(10)),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // Visibility(
              //     visible: _searchResult.isNotEmpty,
              //     child: Padding(
              //       padding:
              //       const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              //       child: Container(
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(5.0),
              //             border: Border.all(
              //               color: Colors.black12,
              //               width: 2.0,
              //             ),
              //           ),
              //           height: 50,
              //           child: search()),
              //     )),







                     Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(

                            height: 170,
                            // width: MediaQuery.of(context).size.width*0.5,
                            child: CarouselSlider(
                              items: [
                                for (int i = 0; i < img.length; i++)
                                  img[i],
                              ],
                              options: CarouselOptions(
                                  height: 170,
                                  viewportFraction: 1.0,
                                  enlargeCenterPage: false,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      // print(reason.toString());
                                      currentIndex = index;
                                    });
                                  },
                                  autoPlay: true),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              for (int i = 0; i < img.length; i++)
                                Container(
                                  height: 8,
                                  width: 8,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: currentIndex == i ? Color(0xFF0672CB) : Color(0xFFCCCCCC),
                                      shape: BoxShape.circle,
                                      // boxShadow: [
                                      //   BoxShadow(
                                      //       color: Colors.grey,
                                      //       spreadRadius: 1,
                                      //       blurRadius: 3,
                                      //       offset: Offset(2, 2))
                                      // ]
                                     ),
                                ),

                            ],
                          ),
                        ],

                      ),
                    ),


              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top : 20),
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
                    child: Image.asset("assets/mini_ad1.png"),
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
                    trendBox("Salon",),
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
                                onPressed: ()
                                {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => merchant_search_results()),
                                  );
                                },
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
        Padding(
          padding: const EdgeInsets.only(top:3, left: 2, right: 2),
          child: Text(text,style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600)),
        ),
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
                    padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 5),
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
        } );
  }

  Widget search() {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount:
      _searchResult.length > 0 ? _searchResult.length : combinedList.length,
      itemBuilder: (BuildContext context, int index) {
        final String item = _searchResult.length > 0
            ? _searchResult[index]
            : "No results found";
        return ListTile(
          title: Row(
            children: [
              Text(item),
            ],
          ),
          onTap: () {
            setState(() {
              //    selectedIndex = 0;
            }
            );
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SecondScreen(
                  selectedItem: item,
                  combinedList: combinedList,
                )));
          },
        );
      },
    );
  }
}