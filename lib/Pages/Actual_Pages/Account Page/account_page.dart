import 'package:flutter/material.dart';

class account_screen extends StatefulWidget {
  @override
  _account_screenState createState() => _account_screenState();
}

class _account_screenState extends State<account_screen> with AutomaticKeepAliveClientMixin<account_screen> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Center(child: Text("Account", style: TextStyle(color: Colors.red, fontSize: 35),),),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
