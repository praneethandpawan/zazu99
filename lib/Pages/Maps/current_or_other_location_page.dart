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
      // backgroundColor: Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: Column(
            children: [
              AspectRatio(
                aspectRatio: 15/8,
                child:Container(
                  child: Image.asset('assets/topcloud.png',fit:BoxFit.cover,),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:50,right: 50),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Container(
                    margin: EdgeInsets.only(top: 70),
                    child: FittedBox(
                        fit: BoxFit.cover,
                        child: Text("Hi Jhon, Nice to meet you!", style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: 21, fontWeight: FontWeight.w400, color: Colors.black),)),
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

              FittedBox(
                fit: BoxFit.cover,
                child: Container(
                  child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset("assets/citiesdis.png"),
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
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  child: Text('Some Other location', style: TextStyle(color: Colors.black, fontSize: 19 ),),
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
