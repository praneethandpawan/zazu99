import 'package:flutter/material.dart';

class ads_screen extends StatefulWidget {
  @override
  _ads_screenState createState() => _ads_screenState();
}

class _ads_screenState extends State<ads_screen> with AutomaticKeepAliveClientMixin<ads_screen> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Center(child: Text("Ads Screen", style: TextStyle(color: Colors.red, fontSize: 35),),),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
