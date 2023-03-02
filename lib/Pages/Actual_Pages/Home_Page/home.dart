import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin<Home> {
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
    super.build(context);
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
                child: Text("asfdddddddddddddddddsfasddfdfdsfdsdffd",

                  overflow: TextOverflow.ellipsis, // new
                  style: TextStyle(fontSize: 25, color: Colors.black),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: TextFormField(
                  // style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search_outlined, color: Colors.grey,),
                        contentPadding: EdgeInsets.all(14),
                        hintText: "Search for Beauty",
                        hintStyle: TextStyle(color: Colors.grey,
                          fontSize: 18,
                          ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.grey),
                        )),
                ),
              ),

              SizedBox(height:20),
              Container(

                child: Column(
                  children: [
                    Container(
                      height:250,
                      child: Carousel(
                        indicatorBarColor: Colors.white,
                        autoScrollDuration: Duration(seconds: 2),
                        animationPageDuration: Duration(milliseconds: 500),
                        activateIndicatorColor: Colors.blue,
                        animationPageCurve: Curves.bounceInOut,
                        // indicatorBarHeight: 50,
                        // indicatorHeight: 20,
                        indicatorWidth: 20,
                        unActivatedIndicatorColor: Colors.grey,
                        stopAtEnd: false,
                        autoScroll: true,
                        items: [

                          Container(
                            height:50,
                            child: FittedBox(
                              fit: BoxFit.fill,
                              // color: Colors.blue,
                             child: Image.asset("assets/second_img.png"),
                              // child: Image.network('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
                            ),
                          ),

                          Container(
                            height:50,
                            child: FittedBox(
                              fit: BoxFit.fill,
                              // color: Colors.blue,
                              child: Image.asset("assets/second_img.png"),
                              // child: Image.network('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
                            ),
                          ),

                          Container(
                            height:50,
                            child: FittedBox(
                              fit: BoxFit.fill,
                              // color: Colors.blue,
                              child: Image.asset("assets/second_img.png"),
                              // child: Image.network('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
                            ),
                          ),

                          Container(
                            height:50,
                            child: FittedBox(
                              fit: BoxFit.fill,
                              // color: Colors.blue,
                              child: Image.asset("assets/second_img.png"),
                              // child: Image.network('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
                            ),
                          ),



                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only( left: 20, right: 20),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Selected Services", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)),
              ),
              Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
              child: Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width*0.15,
                    // height: MediaQuery.of(context).size.height*0.115,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Color(0xFFE6F1FA),
                    ),
                    child: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.1,
                        // height: MediaQuery.of(context).size.height*0.115,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Color(0xFF0672CB),
                        ), //BoxDecoration
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.15,
                    // height: MediaQuery.of(context).size.height*0.115,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Color(0xFFE6F1FA),
                    ),
                    child: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.1,
                        // height: MediaQuery.of(context).size.height*0.115,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Color(0xFF0672CB),
                        ), //BoxDecoration
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.15,
                    // height: MediaQuery.of(context).size.height*0.115,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Color(0xFFE6F1FA),
                    ),
                    child: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.1,
                        // height: MediaQuery.of(context).size.height*0.115,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Color(0xFF0672CB),
                        ), //BoxDecoration
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.15,
                    // height: MediaQuery.of(context).size.height*0.115,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Color(0xFFE6F1FA),
                    ),
                    child: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.1,
                        // height: MediaQuery.of(context).size.height*0.115,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Color(0xFF0672CB),
                        ), //BoxDecoration
                      ),
                    ),
                  ),
                ], //<Widget>[]
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width*0.15,
                      // height: MediaQuery.of(context).size.height*0.115,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Color(0xFFE6F1FA),
                      ),
                      child: Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.1,
                          // height: MediaQuery.of(context).size.height*0.115,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Color(0xFF0672CB),
                          ), //BoxDecoration
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.15,
                      // height: MediaQuery.of(context).size.height*0.115,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Color(0xFFE6F1FA),
                      ),
                      child: Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.1,
                          // height: MediaQuery.of(context).size.height*0.115,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Color(0xFF0672CB),
                          ), //BoxDecoration
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.15,
                      // height: MediaQuery.of(context).size.height*0.115,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Color(0xFFE6F1FA),
                      ),
                      child: Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.1,
                          // height: MediaQuery.of(context).size.height*0.115,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Color(0xFF0672CB),
                          ), //BoxDecoration
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.15,
                        // height: MediaQuery.of(context).size.height*0.115,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Color(0xFFE6F1FA),
                        ),
                        child: Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.1,
                            // height: MediaQuery.of(context).size.height*0.115,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Color(0xFF0672CB),
                            ), //BoxDecoration
                          ),
                        ),
                      ),
                    ),
                  ], //<Widget>[]
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Visibility(
                  visible: isVisible,
                  child: Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        children: <Widget>[
                          hide(context),
                          SizedBox(height: 20,),
                          hide(context),
                          SizedBox(height: 20,),
                          hide(context),
                          SizedBox(height: 20,),
                          hide(context),
                          SizedBox(height: 20,),
                        ], //<widget>[]
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 100,
                color: Color(0xFF1F9653),
                child: Padding(
                  padding: EdgeInsets.only(top: 18, bottom: 18, left:20, right: 20),
                  child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image.asset("assets/mini_ad1.png")),
                ),
              ),
              SizedBox(height: 250,),

            ],
          ),
        ),
      ),
    );
  }

  Widget hide(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width*0.15,
          // height: MediaQuery.of(context).size.height*0.115,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: Color(0xFFE6F1FA),
          ),
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width*0.1,
              // height: MediaQuery.of(context).size.height*0.115,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: Color(0xFF0672CB),
              ), //BoxDecoration
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width*0.15,
          // height: MediaQuery.of(context).size.height*0.115,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: Color(0xFFE6F1FA),
          ),
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width*0.1,
              // height: MediaQuery.of(context).size.height*0.115,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: Color(0xFF0672CB),
              ), //BoxDecoration
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width*0.15,
          // height: MediaQuery.of(context).size.height*0.115,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: Color(0xFFE6F1FA),
          ),
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width*0.1,
              // height: MediaQuery.of(context).size.height*0.115,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: Color(0xFF0672CB),
              ), //BoxDecoration
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width*0.15,
          // height: MediaQuery.of(context).size.height*0.115,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: Color(0xFFE6F1FA),
          ),
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width*0.1,
              // height: MediaQuery.of(context).size.height*0.115,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: Color(0xFF0672CB),
              ), //BoxDecoration
            ),
          ),
        ),
      ], //<Widget>[]
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
  @override
  bool get wantKeepAlive => true;
}







class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      child: Text('See All'),
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Visibility(
                  visible: isVisible,
                  child: Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        children: <Widget>[
                          hide(context),
                          SizedBox(height: 20,),
                          hide(context),
                          SizedBox(height: 20,),
                          hide(context),
                          SizedBox(height: 20,),
                          hide(context),
                          SizedBox(height: 20,),
                        ], //<widget>[]
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget hide(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blueGrey,
          ), //BoxDecoration
        ),

        Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueGrey,
            ),
        ),

        Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueGrey,
            ),
        ),
        Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueGrey,
            ), ////Container
        ),
      ], //<Widget>[]
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}