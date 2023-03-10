import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zazu99/Pages/Maps/location_select.dart';

import '../Actual_Pages/Home_Page/home.dart';

class current_or_other_location_page extends StatefulWidget {
  const current_or_other_location_page({Key? key}) : super(key: key);

  @override
  State<current_or_other_location_page> createState() => _current_or_other_location_pageState();
}

class _current_or_other_location_pageState extends State<current_or_other_location_page> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
            children: [
              SizedBox(height: 50),

              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    alignment: Alignment.center,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new_sharp, size: 20 ,),
                      style: IconButton.styleFrom(
                          backgroundColor: Color(0xFF0672CB)),
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 3),
                      onPressed: () => Navigator.of(context).pop(true),
                    ),
                    width: 46,
                    height: 46,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.0),

                      boxShadow: [

                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10,
                        ),
                        BoxShadow(
                            color: Colors.white
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                // color: Colors.blueGrey,
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.13,
                child: Image.asset('assets/roundlogo3.png',),
              ),
              Padding(
                padding: EdgeInsets.only(left:50,right: 50),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Container(
                    margin: EdgeInsets.only(top: 45),
                    child: FittedBox(
                        fit: BoxFit.cover,
                        child: Text("Hi John, Nice to meet you!", style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: 21, fontWeight: FontWeight.w400, color: Colors.black),)),
                    // SizedBox(width: 8,),
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Padding(
                padding: EdgeInsets.only(left:50,right: 50),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Container(
                    child: FittedBox(
                              fit: BoxFit.cover,
                              child: Text("See Services Around", style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: 19, fontWeight: FontWeight.w700, color: Color(0xFF0672CB)),)),
                          // SizedBox(width: 8,),
                  ),
                ),

              ),

              Padding(
                padding: EdgeInsets.only(left: 17, right: 17),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Container(
                    child: FittedBox(
                        fit: BoxFit.cover,
                        child: Image.asset("assets/citiesdis.png"),
                    ),

                  ),
                ),
              ),

              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.94,
                child: OutlinedButton(
                  onPressed:
                      () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => location_select()),
                    );
                  },
                  child: Text('Your Current Location', style: TextStyle(color: Colors.white, fontSize: 19 ),),
                ),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Color(0xFF0672CB),
                ),
              ),

              SizedBox(height: 20,),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.94,
                child: OutlinedButton(
                  onPressed:
                      () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home(sortedReportList: [],)),
                    );
                  },
                  child: Text('Some Other location', style: TextStyle(color: Colors.blue, fontSize: 19 ),),
                ),
                decoration:BoxDecoration(
                  border: Border.all(color:Color(0xFF0672CB)),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  // color: Color(0xFF0672CB),
                ),
              ),
            ],
        ),
      ),
    );
  }
}
