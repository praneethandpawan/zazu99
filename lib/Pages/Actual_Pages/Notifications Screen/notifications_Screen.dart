import 'package:flutter/material.dart';

class notifications_screen extends StatefulWidget {
  @override
  _notifications_screenState createState() => _notifications_screenState();
}

class _notifications_screenState extends State<notifications_screen> with AutomaticKeepAliveClientMixin<notifications_screen> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Center(child: Text("Notifications", style: TextStyle(color: Colors.red, fontSize: 35),),),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
