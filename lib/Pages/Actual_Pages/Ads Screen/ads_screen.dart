import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:share_plus/share_plus.dart';
import '../../../../like.dart';

class ads_screen extends StatefulWidget {
  @override
  _ads_screenState createState() => _ads_screenState();
}

class _ads_screenState extends State<ads_screen> with AutomaticKeepAliveClientMixin<ads_screen> {
  @override
  bool showWidget = false;



  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(

      backgroundColor: Colors.white,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Container(
              //   // width: MediaQuery.of(context).size.width * 0.44,
              //   child: Text(
              //     "Narsingi-Puppalaguda Main Ro...",
              //     overflow: TextOverflow.ellipsis,
              //     style: TextStyle(fontSize: 15, color: Colors.black),
              //   ),
              // ),
              new Container(
                width: MediaQuery.of(context).size.width * 0.60,
                padding: new EdgeInsets.only(right: 13.0),
                child: new Text(
                  'Ads / Promotions',
                  overflow: TextOverflow.ellipsis,
                  style: new TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Roboto',
                    color: new Color(0xFF212121),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),


              Flexible(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),

                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 25,
                            width: 25,
                            child: Image.asset("assets/kmrange.png")),
                        Flexible(
                          child: SizedBox(
                              width: 25,
                              child: Text("2 Km", style: TextStyle(fontSize: 10,),)),
                        ),
                        Flexible(child: Icon(Icons.arrow_drop_down, size: 30,),),
                      ],
                    ),
                  ),
                  onPressed: (){
                    setState(() {
                      showWidget = !showWidget;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 17.0,right: 17),
          child: Column(
            children: [

              Padding(
                padding:
                EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
                child: TextField(
                  // controller: _searchController,
                  // onChanged: _onSearchTextChanged,
                  decoration: InputDecoration(
                    hintText: 'Search for "Beauty"',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),
              promoshare(),
              promoshare(),
              promoshare(),
              promoshare(),
            ],
          ),
        ),
      ),
    );
  }

  void sharepressed(){
    // String message= "Check ou this Saloon";
    // Share.share(message);
    Share.share('check out my website Store');
    // Share.shareFiles(['${directory.path}/image.jpg'], text: 'Great picture');
    // Share.shareFiles(['${directory.path}/image1.jpg', '${directory.path}/image2.jpg']);
  }

  Column promoshare(){
    return Column(
      children: [
        SizedBox(child: Image.asset("assets/promotions1.png",fit: BoxFit.fill,),),

        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: sharepressed,
                child: SizedBox(
                  height: 30,
                  width: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/promoshare.png"),
                      Text("14", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
              ),


              SizedBox(
                height: 30,
                width: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/promolike.png"),
                    Text("14", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),)
                  ],
                ),
              ),


              LikeButton(),






              GestureDetector(
                onTap: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => _buildPopupDialog(context),
                  );
                },
                child: SizedBox(
                  height: 30,
                  width: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/promoreport.png"),
                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPopupDialog(BuildContext context) {
    return AlertDialog(
      // title: const Text('Report an Issue', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0, left:   0, top: 17, bottom: 10),
            child: Text("Report an issue"
              ,style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 23,
              ),
            ),
          ),
          IconButton(
              onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.close,size: 25,color: Colors.black,),)

        ],
      ),
      content: SizedBox(
        width: MediaQuery.of(context).size.width*0.99,
        child: SingleChildScrollView(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Text("Merchant Name", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  border: Border.all(
                    width: 1,
                    color: Color(0xFFCCCCCC),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),

                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
                    child: Text("Super Delicious Food", style: TextStyle(color: Color(0xFF444444), fontSize: 16),),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Text("Issue Type", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
              ),


              Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                      color: Color(0xFFCCCCCC),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),

                  child:Padding(
                    padding: const EdgeInsets.only(left: 17.0, right:17),
                    child: DropdownButton(
                      value: "Error",
                      items: [ //add items in the dropdown
                        DropdownMenuItem(
                          child: Text("Error"),
                          value: "Error",
                        ),
                        DropdownMenuItem(
                            child: Text("Abuse 2"),
                            value: "Abuse 2"
                        ),
                        DropdownMenuItem(
                          child: Text("Abuse 3"),
                          value: "Abuse 3",
                        )

                      ],
                      onChanged: (value){ //get value when changed
                        print("You have selected $value");
                      },

                      icon: Padding( //Icon at tail, arrow bottom is default icon
                          padding: EdgeInsets.only(left:20),
                          child:Icon(Icons.arrow_downward_sharp)
                      ),
                      iconEnabledColor: Colors.black, //Icon color
                      style: TextStyle(  //te
                        color: Colors.black, //Font color
                        fontSize: 16, //font size on dropdown button
                      ),

                      dropdownColor: Colors.white, //dropdown background color
                      underline: Container(), //remove underline
                      isExpanded: true, //make true to make width 100%
                    ),
                  )
              ),


              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Text("Description", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
              ),

              TextField(

                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Write your describe here',
                ),
                maxLines: 7,
              ),
            ],
          ),
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 14.0, right: 14, ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.28,
                height: 40,
                child: OutlinedButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Cancel",
                      style:
                      TextStyle(color: Color(0xFF0672CB), fontSize: 15),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(
                      color: Color(0xFF0672CB),
                    )),
              ),
              SizedBox(width: 15,),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.28,
                child: OutlinedButton(
                  onPressed: (){},
                  // {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => tyty()),
                  //   );
                  // },
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      ('Submit'),
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Color(0xFF0672CB),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  @override
  bool get wantKeepAlive => true;
}
