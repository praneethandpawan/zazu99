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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 60, left: 10, right: 10),
            child: Padding(
              padding: const EdgeInsets.only(left: 17.0, right: 17),
              child: TextFormField(
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: 'Enter Your location/society/apartment',
                  // prefixIcon: const Icon(Icons.arrow_back),
                  prefix: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.blue,),
                    color: Colors.red,
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
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
                    child: Image.asset("assets/location.png"),
                  ),
                  Container(
                    child: Text("Use current location", style: TextStyle(fontSize: 17, color: Colors.blue),),
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
        ],
      ),
    );
  }
}
