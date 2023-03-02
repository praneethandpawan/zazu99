import 'package:flutter/material.dart';

class favorites_page extends StatefulWidget {
  @override
  _favorites_pageState createState() => _favorites_pageState();
}

class _favorites_pageState extends State<favorites_page> with AutomaticKeepAliveClientMixin<favorites_page> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Center(child: Text("Favorites", style: TextStyle(color: Colors.red, fontSize: 40),),),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
