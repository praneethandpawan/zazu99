import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> with AutomaticKeepAliveClientMixin<Search> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200,
            color: Colors.orange,
          ),
          Container(
            height: 200,
            color: Colors.blue,
          ),
          Container(
            height: 200,
            color: Colors.red,
          ),
          Container(
            height: 200,
            color: Colors.white,
          ),
          Container(
            height: 200,
            color: Colors.yellow,
          ),
          Container(
            height: 200,
            color: Colors.grey,
          ),Container(
            height: 200,
            color: Colors.blue,
          ),Container(
            height: 200,
            color: Colors.pink,
          ),
          Container(
            height: 200,
            color: Colors.white,
          ),Container(
            height: 200,
            color: Colors.orange,
          ),
          Container(
            height: 200,
            color: Colors.red,
          ),Container(
            height: 200,
            color: Colors.black45,
          ),



        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
