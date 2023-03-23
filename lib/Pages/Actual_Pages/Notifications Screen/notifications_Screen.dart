import 'package:flutter/material.dart';

class notifications_screen extends StatefulWidget {
  @override
  _notifications_screenState createState() => _notifications_screenState();
}

class _notifications_screenState extends State<notifications_screen> with AutomaticKeepAliveClientMixin<notifications_screen> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(appBar: AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.blue),
        onPressed: (){},
        // onPressed: () => Navigator.of(context).pop(),
      ),
      title: Container(
        width: MediaQuery.of(context).size.width * 5,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            new Container(
              width: MediaQuery.of(context).size.width * 0.60,
              padding: new EdgeInsets.only(right: 13.0),
              child: new Text(
                'Notifications',
                overflow: TextOverflow.ellipsis,
                style: new TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Roboto',
                  color: new Color(0xFF212121),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    ),
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 11,),
            Noticationalive(),
            Noticationalive(),
            Noticationalive(),
            Noticationseen(),
            Noticationseen(),
            Noticationseen(),
          ],
        ),
      ),


    );
  }

  Noticationalive(){
    return Column(
      children: [
        Container(
          height: 110,
          color: Color(0xFFe6f1fb),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Image.asset("assets/notifi1.png"),
                  height: 53,
                  width: 53,
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text("SALE IS LIVE", style: TextStyle(fontSize: 22, color: Color(0xFF0672CB), fontWeight: FontWeight.w600),)),
                        Text("1m ago.", style: TextStyle(fontSize: 16,),),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8, right: 8, ),
                      child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit Lorem ipsum dolor sit amet, consectetur adipiscing elit",maxLines: 2, overflow:  TextOverflow.ellipsis, style: TextStyle(fontSize: 13),),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
        SizedBox(height: 4,),

      ],
    );
  }

  Noticationseen(){
    return Column(
      children: [
        Container(
          height: 110,
          color: Color(0xFFFFFFFF),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Image.asset("assets/notifi1.png"),
                  height: 53,
                  width: 53,
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text("SALE IS LIVE", style: TextStyle(fontSize: 22, color: Color(0xFF0672CB), fontWeight: FontWeight.w600),)),

                        Text("1m ago.", style: TextStyle(fontSize: 16,),),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8, right: 8, ),
                      child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit Lorem ipsum dolor sit amet, consectetur adipiscing elit",maxLines: 2, overflow:  TextOverflow.ellipsis, style: TextStyle(fontSize: 13),),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
        SizedBox(height: 4,),

      ],
    );
  }
  @override
  bool get wantKeepAlive => true;
}
