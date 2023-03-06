import 'package:flutter/material.dart';
import 'package:zazu99/Pages/Maps/actual_map.dart';

class location_select extends StatefulWidget {
  const location_select({Key? key}) : super(key: key);

  @override
  State<location_select> createState() => _location_selectState();
}

class _location_selectState extends State<location_select> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          SizedBox(height: 50,),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            height: 53,
            // height: MediaQuery.of(context).size.height*0.25,
            width: MediaQuery.of(context).size.width*0.95,
            child: Row(
              children: <Widget> [
                IconButton(
                  iconSize: 25,
                  icon: const Icon(
                      Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  // color: Colors.red,
                  child: TextFormField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search Your location/society/apartment',
                      // prefixIcon: const Icon(Icons.arrow_back),
                      // prefix: IconButton(
                      //   icon: Icon(Icons.arrow_back, color: Colors.blue,),
                      //   color: Colors.red,
                      //   onPressed: () => Navigator.of(context).pop(),
                      // ),
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(5),
                      // ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: ()
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => mappage()),
              );
            },
            child: Padding (
              padding: EdgeInsets.only(top: 20, left: 25),
              child: Row(
                children: [
                  Container(
                    width: 20,
                    child: Image.asset("assets/location.png"),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    child: Text("Use current location", style: TextStyle(fontSize: 17, color: Colors.blue, fontWeight: FontWeight.w500),),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            color: Color(0xFFF5F5F5),
            height: 5,
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("powered by Google", style: TextStyle(fontSize: 13),),
          ),
        ],
      ),
    );
  }
}