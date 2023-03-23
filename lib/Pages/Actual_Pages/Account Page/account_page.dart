import 'package:flutter/material.dart';
import 'package:zazu99/Pages/Actual_Pages/Account%20Page/EditProfilePage.dart';

class account_screen extends StatefulWidget {
  @override
  _account_screenState createState() => _account_screenState();
}

class _account_screenState extends State<account_screen> with AutomaticKeepAliveClientMixin<account_screen> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
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
                  'Account',
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
        child: Padding(
          padding: const EdgeInsets.only(left: 17.0, right: 17),
          child: IntrinsicHeight(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Center(
                  child: Container(
                    height: 115.0,
                    width: 115.0,
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                      // image: DecorationImage(
                      //     image: AssetImage("assets/dp1.png"),
                      //     fit: BoxFit.cover
                      // ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 65,top: 65),
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(5),
                        shape: BoxShape.circle,
                        // color: Colors.white
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: (){},
                          icon: Icon(
                            Icons.camera_alt,
                            color: Color(0xFF0063B8),
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 15,),
                Text("John Raymonds",
                  style: new TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Roboto',
                    color: new Color(0xFF0672CB),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20,),

                Container(
                  width: MediaQuery.of(context).size.width * 0.35,
                  height: 40,
                  child: OutlinedButton(
                    onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => edit_profile_page()),
                  );},
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(color: Color(0xFF0672CB), fontSize: 17),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all(
                        color: Color(0xFF0672CB),
                      )),
                ),

                SizedBox(height: 27,),

                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 12),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 13.0),
                      child: Text("Register as Merchant",
                        style: new TextStyle(
                        fontSize: 19.0,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                    ),
                  ),
                ),

                Divider(
                  height: 10,
                  color: Color(0xFFCCCCCC),
                  thickness: 1,
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 12),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 13.0),
                      child: Text("Feedback",
                        style: new TextStyle(
                          fontSize: 19.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),

                Divider(
                  height: 10,
                  color: Color(0xFFCCCCCC),
                  thickness: 1,
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 12),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 13.0),
                      child: Text("Help Center",
                        style: new TextStyle(
                          fontSize: 19.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),

                Divider(
                  height: 10,
                  color: Color(0xFFCCCCCC),
                  thickness: 1,
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 12),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 13.0),
                      child: Text("FAQ’s",
                        style: new TextStyle(
                          fontSize: 19.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),

                Divider(
                  height: 10,
                  color: Color(0xFFCCCCCC),
                  thickness: 1,
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 12),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 13.0),
                      child: Text("Privacy Policy",
                        style: new TextStyle(
                          fontSize: 19.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),

                Divider(
                  height: 10,
                  color: Color(0xFFCCCCCC),
                  thickness: 1,
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
