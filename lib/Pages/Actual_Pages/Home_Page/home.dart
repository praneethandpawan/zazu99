import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin<Home> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200,
            color: Colors.red,
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
