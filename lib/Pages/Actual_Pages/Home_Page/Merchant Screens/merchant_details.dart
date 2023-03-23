import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../like.dart';
import '../../../Other_Pages/ad_popup.dart';
import '../../../Testing.dart';
import 'package:share_plus/share_plus.dart';
// import 'package:flash/flash.dart';

class merchant_details extends StatefulWidget {
  const merchant_details({Key? key}) : super(key: key);
  @override
  State<merchant_details> createState() => _merchant_detailsState();
}

class _merchant_detailsState extends State<merchant_details> {
  bool showWidget = false;
  List img=[
    Image.asset("assets/main_ad.png",fit: BoxFit.fill,),
    Image.asset("assets/main_ad.png",fit: BoxFit.fill,),
    Image.asset("assets/main_ad.png",fit: BoxFit.fill,),
    Image.asset("assets/main_ad.png",fit: BoxFit.fill,),
  ];

  int currentIndex = 0;
  late final _ratingController;
  late double _rating;
  IconData? _selectedIcon;
  double _userRating = 3.0;
  int _ratingBarMode = 1;
  double _initialRating = 2.0;
  bool _isRTLMode = false;
  bool _isVertical = false;

  final _focusNode = FocusNode();

  String descText = "Description Line 1\nDescription Line 2\nDescription Line 3\nDescription Line 4\nDescription Line 5\nDescription Line 6\nDescription Line 7\nDescription Line 8";
  bool descTextShowFlag = false;

  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];


  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // resizeToAvoidBottomInset:true,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.blue),
            onPressed: () => Navigator.of(context).pop(),
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
                    'The Glamour Lounge',
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
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 17, right: 17, top: 17, bottom: 17),
              child: Column(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(

                          height: 170,
                          // width: MediaQuery.of(context).size.width*0.5,
                          child: CarouselSlider(
                            items: [
                              for (int i = 0; i < img.length; i++)
                                img[i],
                            ],
                            options: CarouselOptions(
                                height: 170,
                                viewportFraction: 1.0,
                                enlargeCenterPage: false,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    // print(reason.toString());
                                    currentIndex = index;
                                  });
                                },
                                autoPlay: true),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 0; i < img.length; i++)
                              Container(
                                height: 8,
                                width: 8,
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: currentIndex == i ? Color(0xFF0672CB) : Color(0xFFCCCCCC),
                                  shape: BoxShape.circle,
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //       color: Colors.grey,
                                  //       spreadRadius: 1,
                                  //       blurRadius: 3,
                                  //       offset: Offset(2, 2))
                                  // ]
                                ),
                              ),

                          ],
                        ),
                      ],

                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: new Text(
                        'The Glamour Lounge',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23, color: Color(0xFF0672CB))
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 6, top: 6),
                    child: Container(
                      child: IntrinsicHeight(

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: 25,
                                width: 25,
                                child: Image.asset("assets/kmrange.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text("2 Km",style: TextStyle(fontSize: 15,color: Colors.black, fontWeight: FontWeight.w400),
                                overflow: TextOverflow.ellipsis,),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 6, bottom: 6),
                              child: SizedBox(
                                height: 18,
                                child: VerticalDivider(
                                  width: 20,

                                  color: Colors.black,
                                  thickness: 1,
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 50,
                              width: 160,
                              child: fivestar(),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 6, bottom: 4),
                              child: SizedBox(
                                height: 18,
                                child: VerticalDivider(
                                width: 10,
                                color: Colors.black,
                                thickness: 1,
                            ),
                              ),
                            ),

                            LikeButton(),

                          ],
                        ),
                      ),
                    ),
                  ),

                  Divider(
                    color: Colors.grey,
                    height: 10,
                    thickness: 1,
                  ),



                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: ()async{
                                  Uri phoneno = Uri.parse('tel:+9154134826');
                                  if (await launchUrl(phoneno)) {
                                  //dialer opened
                                  }
                                  else{
                                  //dailer is not opened
                                  }
                             },

                          child: SizedBox(
                            height: 35,
                            width: 35,
                            child: Image.asset("assets/phonesym.png"),
                          ),
                        ),

                        GestureDetector(
                          onTap: _launchURLAppfb,
                          child: SizedBox(
                            height: 35,
                            width: 35,
                            child: Image.asset("assets/fbsym.png"),
                          ),
                        ),


                        SizedBox(
                          height: 35,
                          width: 35,
                          child: Image.asset("assets/whatsappsym.png"),
                        ),


                        GestureDetector(
                          onTap: _launchURLAppyt,
                          child: SizedBox(
                            height: 35,
                            width: 35,
                            child: Image.asset("assets/ytsym.png"),
                          ),
                        ),


                        GestureDetector(
                          onTap: _launchURLAppgmap,
                          child: SizedBox(
                            height: 35,
                            width: 35,
                            child: Image.asset("assets/mapsym.png"),
                          ),
                        ),


                        SizedBox(
                          height: 35,
                          width: 35,
                          child: GestureDetector(
                              onTap: sharepressed,
                              child: Image.asset("assets/sharesym.png")),
                        ),


                      ],
                    ),
                  ),


                  Divider(
                    color: Colors.grey,
                    height: 10,
                    thickness: 1,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Container(
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.location_on_outlined, size: 35,),
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width * 0.7,
                                      padding:  EdgeInsets.only(right: 13.0),
                                      child: Text(
                                        'Phase No, Neeha’s, 1st Floor, Plot No.33,',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 17, color: Colors.black,fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                  Text("..., Hyderabad-505006.",style: TextStyle(fontSize: 17,color: Colors.black, fontWeight: FontWeight.w400),
                                    overflow: TextOverflow.ellipsis,),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),


                  Divider(
                    color: Colors.grey,
                    height: 10,
                    thickness: 1,
                  ),


                  Padding(
                    padding: const EdgeInsets.only(bottom: 6, top: 8),
                    child: Container(
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.watch_later_outlined, size: 30,),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text("Closed",style: TextStyle(fontSize: 18,color: Colors.red, fontWeight: FontWeight.w700),
                                overflow: TextOverflow.ellipsis,),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 6, bottom: 4),
                              child: VerticalDivider(
                                width: 20,
                                color: Colors.black,
                                thickness: 1,
                              ),
                            ),

                            Text("9 am - 10 pm",style: TextStyle(fontSize: 11),),

                            Padding(
                              padding: const EdgeInsets.only(top: 6, bottom: 4),                          child: VerticalDivider(
                              width: 20,
                              color: Colors.black,
                              thickness: 1,
                            ),
                            ),

                            Text("All day",style: TextStyle(fontSize: 11),),

                          ],
                        ),
                      ),
                    ),
                  ),



                  Divider(
                    color: Colors.grey,
                    height: 10,
                    thickness: 1,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 6, bottom: 6),
                    child: Container(
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.phone, size: 30,),
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Text("07337359025",style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                              overflow: TextOverflow.ellipsis,),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Divider(
                    color: Colors.grey,
                    height: 10,
                    thickness: 1,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Container(
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                            width: 20,
                            child: Image.asset("assets/gstpic.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Text("GSTIN: 36SRLPS05958313UK",style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                              overflow: TextOverflow.ellipsis,),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Divider(
                    color: Colors.grey,
                    height: 10,
                    thickness: 1,
                  ),


                  Align(
                    alignment: Alignment.centerLeft,
                    child: new Text(
                        'Deals',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19, color: Color(0xFF0672CB))
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: SizedBox(
                      child: Image.asset("assets/ads99.png"),
                    ),
                  ),

                  Divider(
                    color: Colors.grey,
                    height: 10,
                    thickness: 1,
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: new Text(
                        'Photos',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19, color: Color(0xFF0672CB))
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:8.0, bottom: 8),
                    child: Container(
                      height: 110,
                      width: MediaQuery.of(context).size.width * 0.99,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[

                          // SizedBox(width: 13,),
                          Padding(
                            // Following padding to give space around the icon and text
                            padding: const EdgeInsets.all(0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap:(){},
                                  // {
                                  //   Navigator.push(context,
                                  //     MaterialPageRoute(builder: (context) => const birthdays()),
                                  //   );
                                  // },
                                  child: Container(
                                    child: Container(height: 200,width: 110,child: Image.asset("assets/mp1.png"),),
                                    height: 110,
                                    width: 110,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 9,),
                          Padding(
                            // Following padding to give space around the icon and text
                            padding: const EdgeInsets.all(0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap:(){},
                                  // {
                                  //   Navigator.push(context,
                                  //     MaterialPageRoute(builder: (context) => const birthdays()),
                                  //   );
                                  // },
                                  child: Container(
                                    child: Container(height: 200,width: 110,child: Image.asset("assets/mp1.png"),),
                                    height: 110,
                                    width: 110,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 9,),
                          Padding(
                            // Following padding to give space around the icon and text
                            padding: const EdgeInsets.all(0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap:(){},
                                  // {
                                  //   Navigator.push(context,
                                  //     MaterialPageRoute(builder: (context) => const birthdays()),
                                  //   );
                                  // },
                                  child: Container(
                                    child: Container(height: 200,width: 110,child: Image.asset("assets/mp1.png"),),
                                    height: 110,
                                    width: 110,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 9,),
                          Padding(
                            // Following padding to give space around the icon and text
                            padding: const EdgeInsets.all(0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap:(){},
                                  // {
                                  //   Navigator.push(context,
                                  //     MaterialPageRoute(builder: (context) => const birthdays()),
                                  //   );
                                  // },
                                  child: Container(
                                    child: Container(height: 200,width: 110,child: Image.asset("assets/mp1.png"),),
                                    height: 110,
                                    width: 110,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 9,),
                          Padding(
                            // Following padding to give space around the icon and text
                            padding: const EdgeInsets.all(0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap:(){},
                                  // {
                                  //   Navigator.push(context,
                                  //     MaterialPageRoute(builder: (context) => const birthdays()),
                                  //   );
                                  // },
                                  child: Container(
                                    child: Container(height: 200,width: 110,child: Image.asset("assets/mp1.png"),),
                                    height: 110,
                                    width: 110,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 9,),

                        ],
                      ),
                    ),
                  ),





                  Divider(
                    color: Colors.grey,
                    height: 10,
                    thickness: 1,
                  ),


                  Align(
                    alignment: Alignment.centerLeft,
                    child: new Text(
                        'Services',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19, color: Color(0xFF0672CB))
                    ),
                  ),


                  Container(
                    margin: EdgeInsets.all(16.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                                "•"+"  Hair-cutting, colouring and styling\n"
                                "•"+"  Waxing other forms of hair \n"
                                "•"+"  Nail treatments\n"
                                "•"+"  Facials and skin care treatments\n"
                                "•"+"  Tanning\n"
                                "•"+"  Massages\n"
                                "•"+"  Complementary Care\n"
                                "•"+"  Salon Equipment\n"
                                "•"+"  Hair Removal \n"
                                "•"+"  Shaving Accessories\n"
                                "•"+"  Steamer & Massager Equipment\n"
                                "•"+"  Beauty Therapy Machine\n",
                            style: TextStyle(fontSize: 20, ),
                            maxLines: descTextShowFlag ? 12 : 6,textAlign: TextAlign.start),
                        SizedBox(height: 8,),
                        InkWell(
                          onTap: (){ setState(() {
                            descTextShowFlag = !descTextShowFlag;
                          }); },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              descTextShowFlag ? Text("Show Less",style: TextStyle(color: Colors.blue, fontSize: 19, fontWeight: FontWeight.w500),) :  Text("Show More",style: TextStyle(color: Colors.blue, fontSize: 19, fontWeight: FontWeight.w500))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),


                  Divider(
                    color: Colors.grey,
                    height: 10,
                    thickness: 1,
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top:8.0, bottom: 11),
                    child: Container(
                      height: 170,
                      color: Color(0xFFFFFDD1),
                      child: Row(
                        children: [
                          Align(
                            alignment:Alignment.topLeft,
                            child: SizedBox(
                              height: 170,
                              width: 62,
                              child: Image.asset("assets/gstpic.png"),
                            ),
                          ),
                          Container(
                            height: 170,
                            width: MediaQuery.of(context).size.width * 0.70,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0, bottom: 6),
                                  child: Align(
                                      alignment:Alignment.centerLeft,
                                      child: Text("ANNOUNCMENT", style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.w600),)),
                                ),

                                Flexible(
                                    child: Text("We are opening a new branch in KPHP. We are opening a new branch in KPHP. We are opening a new branch in KPHP.",
                                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400))),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  ElevatedButton(onPressed: ()

                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ad_popup()),
                        );
                      },
                      child: Text("Ad Pop up"),),

                  ElevatedButton(onPressed: (){},

                  // {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => ad_popup()),
                  //   );
                  // },
                    child: Text("Feedback Pop up"),),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: new Text(
                        'Rate Merchant',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19, color: Color(0xFF0672CB))
                    ),
                  ),

                  SizedBox(
                    height: 300,
                    width: 500,
                    child: fivestar2(),
                  ),



                  // Container(
                  //   height: 50,
                  //   width: MediaQuery.of(context).size.width * 0.84,
                  //   child: OutlinedButton(
                  //     onPressed: () {
                  //
                  //       final snackBar = SnackBar(
                  //         duration: Duration(milliseconds: 120000),
                  //         content: const Text('Hi, I am a SnackBar!'),
                  //         backgroundColor: (Color(0xFF0672CB)),
                  //         action: SnackBarAction(
                  //           label: 'dismiss',
                  //           onPressed: () {
                  //           },
                  //         ),
                  //       );
                  //       ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  //     },
                  //     child: Text('SnackBar', style: TextStyle(color: Colors.blue, fontSize: 19 ),),
                  //   ),
                  //   decoration:BoxDecoration(
                  //     border: Border.all(color:Color(0xFF0672CB)),
                  //     borderRadius: BorderRadius.all(Radius.circular(5)),
                  //     // color: Color(0xFF0672CB),
                  //   ),
                  // ),

                  SizedBox(height: 50,),
                ],
              ),
            ),
        ),
      ),
    );
  }


  // void _showTopFlash({FlashBehavior style = FlashBehavior.fixed}) {
  //   showFlash(
  //     context: context,
  //     duration: const Duration(seconds: 2),
  //     persistent: true,
  //     builder: (_, controller) {
  //       return Flash(
  //         controller: controller,
  //         backgroundColor: Colors.white,
  //         brightness: Brightness.light,
  //         barrierColor: Colors.black38,
  //         barrierDismissible: true,
  //         behavior: style,
  //         position: FlashPosition.top,
  //         child: FlashBar(
  //           title: Text('Hey User!'),
  //           content: Text('This is the top Flashbar!'),
  //           primaryAction: TextButton(
  //             onPressed: () {},
  //             child: Text('DISMISS',
  //                 style: TextStyle(color: Colors.blue)),
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }
  //


  _launchURLBrowser() async {
    var url = Uri.parse("https://www.youtube.com/watch?v=gU7ZxYN03fU");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  _launchURLAppfb() async {
    var url = Uri.parse("https://www.facebook.com/zuck/");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLAppgmap() async {
    var url = Uri.parse("https://goo.gl/maps/mHXi63rDp79GVPQA9");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLAppyt() async {
    var url = Uri.parse("https://www.youtube.com/watch?v=gU7ZxYN03fU");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void sharepressed(){
    // String message= "Check ou this Saloon";
    // Share.share(message);
    Share.share('check out my website Store');
    // Share.shareFiles(['${directory.path}/image.jpg'], text: 'Great picture');
    // Share.shareFiles(['${directory.path}/image1.jpg', '${directory.path}/image2.jpg']);
  }


  // Widget _buildPopupDialog(BuildContext context) {
  //   return AlertDialog(
  //
  //     title: Row(
  //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         Padding(
  //           padding: const EdgeInsets.only(right: 10.0, left: 20, top: 17, bottom: 10),
  //           child: Text("Report an issue"
  //             ,style: TextStyle(
  //               fontWeight: FontWeight.w500,
  //               fontSize: 23,
  //             ),
  //           ),
  //         ),
  //         IconButton(
  //           onPressed: (){},
  //           icon: const Icon(Icons.close,size: 25,color: Colors.black,),)
  //
  //       ],
  //     ),
  //     // title: const Text('Report an Issue', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
  //     content: SizedBox(
  //       width: MediaQuery.of(context).size.width*0.99,
  //       child: new Column(
  //         mainAxisSize: MainAxisSize.min,
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: <Widget>[
  //           Row(
  //             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               Padding(
  //                 padding: const EdgeInsets.only(right: 10.0, left: 20, top: 17, bottom: 10),
  //                 child: Text("Report an issue"
  //                   ,style: TextStyle(
  //                     fontWeight: FontWeight.w500,
  //                     fontSize: 23,
  //                   ),
  //                 ),
  //               ),
  //               IconButton(
  //                 onPressed: (){},
  //                 icon: const Icon(Icons.close,size: 25,color: Colors.black,),)
  //
  //             ],
  //           ),
  //           Padding(
  //             padding: const EdgeInsets.only(bottom: 4.0),
  //             child: Text("Merchant Name", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
  //           ),
  //           Container(
  //             height: 50,
  //             decoration: BoxDecoration(
  //               color: Color(0xFFF5F5F5),
  //               border: Border.all(
  //                 width: 1,
  //                 color: Color(0xFFCCCCCC),
  //               ),
  //               borderRadius: BorderRadius.all(Radius.circular(5)),
  //             ),
  //
  //             child: Align(
  //               alignment: Alignment.centerLeft,
  //               child: Padding(
  //                 padding: const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
  //                 child: Text("The Glamour Lounge", style: TextStyle(color: Color(0xFF444444), fontSize: 16),),
  //               ),
  //             ),
  //           ),
  //           SizedBox(
  //             height: 5,
  //           ),
  //
  //           Padding(
  //             padding: const EdgeInsets.only(bottom: 4.0),
  //             child: Text("Issue Type", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
  //           ),
  //
  //
  //           Container(
  //               width: MediaQuery.of(context).size.width,
  //               decoration: BoxDecoration(
  //                 color: Colors.white,
  //                 border: Border.all(
  //                   width: 1,
  //                   color: Color(0xFFCCCCCC),
  //                 ),
  //                 borderRadius: BorderRadius.all(Radius.circular(5)),
  //               ),
  //
  //               child:Padding(
  //                 padding: const EdgeInsets.only(left: 17.0, right:17),
  //                 child: DropdownButton(
  //                   value: "Abuse",
  //                   items: [ //add items in the dropdown
  //                     DropdownMenuItem(
  //                       child: Text("Abuse"),
  //                       value: "Abuse",
  //                     ),
  //                     DropdownMenuItem(
  //                         child: Text("Abuse 2"),
  //                         value: "Abuse 2"
  //                     ),
  //                     DropdownMenuItem(
  //                       child: Text("Abuse 3"),
  //                       value: "Abuse 3",
  //                     )
  //
  //                   ],
  //                   onChanged: (value){ //get value when changed
  //                     print("You have selected $value");
  //                   },
  //
  //                   icon: Padding( //Icon at tail, arrow bottom is default icon
  //                       padding: EdgeInsets.only(left:20),
  //                       child:Icon(Icons.arrow_downward_sharp)
  //                   ),
  //                   iconEnabledColor: Colors.black, //Icon color
  //                   style: TextStyle(  //te
  //                       color: Colors.black, //Font color
  //                       fontSize: 16, //font size on dropdown button
  //                   ),
  //
  //                   dropdownColor: Colors.white, //dropdown background color
  //                   underline: Container(), //remove underline
  //                   isExpanded: true, //make true to make width 100%
  //                 ),
  //               )
  //           ),
  //
  //
  //           SizedBox(
  //             height: 10,
  //           ),
  //
  //           Padding(
  //             padding: const EdgeInsets.only(bottom: 4.0),
  //             child: Text("Description", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
  //           ),
  //
  //           TextField(
  //
  //             decoration: InputDecoration(
  //               border: OutlineInputBorder(),
  //               hintText: 'Write your describe here',
  //             ),
  //             maxLines: 7,
  //           ),
  //         ],
  //       ),
  //     ),
  //     actions: <Widget>[
  //       Padding(
  //         padding: const EdgeInsets.only(left: 14.0, right: 14, ),
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             Container(
  //               width: MediaQuery.of(context).size.width * 0.28,
  //               height: 40,
  //               child: OutlinedButton(
  //                 onPressed: (){
  //                   Navigator.of(context).pop();
  //                 },
  //                 child: Align(
  //                   alignment: Alignment.center,
  //                   child: Text(
  //                     "Cancel",
  //                     style:
  //                     TextStyle(color: Color(0xFF0672CB), fontSize: 15),
  //                   ),
  //                 ),
  //               ),
  //               decoration: BoxDecoration(
  //                   borderRadius: BorderRadius.all(Radius.circular(5)),
  //                   border: Border.all(
  //                     color: Color(0xFF0672CB),
  //                   )),
  //             ),
  //             SizedBox(width: 15,),
  //             Container(
  //               height: 40,
  //               width: MediaQuery.of(context).size.width * 0.28,
  //               child: OutlinedButton(
  //                 onPressed: () {},
  //                 child: Align(
  //                   alignment: Alignment.center,
  //                   child: Text(
  //                     ('Submit'),
  //                     style: TextStyle(color: Colors.white, fontSize: 15),
  //                   ),
  //                 ),
  //               ),
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.all(Radius.circular(5)),
  //                 color: Color(0xFF0672CB),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ],
  //   );
  // }
}



class fivestar extends StatefulWidget {
  const fivestar({Key? key}) : super(key: key);
  @override
  _fivestarState createState() => _fivestarState();
}
class _fivestarState extends State {
  double? _rating;
  IconData? _selectedIcon;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) => Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Row(
              children: [
                Container(
                  color: Colors.white,
                  // padding: const EdgeInsets.symmetric(vertical: 200),
                  child: RatingBar.builder(
                    initialRating: _rating ?? 0.0,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: false,
                    itemCount: 5,
                    itemSize: 18,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                    itemBuilder: (context, _) => Icon(
                      _selectedIcon ?? Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      _rating = rating;
                      setState(() {});
                    },
                  ),
                ),
                Text("4.4 (280)")
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class fivestar2 extends StatefulWidget {
  const fivestar2({Key? key}) : super(key: key);
  @override
  _fivestar2State createState() => _fivestar2State();
}

class _fivestar2State extends State {
  IconData? _selectedIcon;
  double _rating = 0.0;
  String _description = "";
  bool _ratingDescriptionVisible = false;
  final _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) => Scaffold(
          resizeToAvoidBottomInset:true,
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Container(
                    color: Colors.white,
                    // padding: const EdgeInsets.symmetric(vertical: 200),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _ratingDescriptionVisible = _rating <= 2;
                        });
                      },
                      child: RatingBar.builder(
                        initialRating: _rating ?? 0.0,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        itemCount: 5,
                        itemSize: 48,
                        itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                        itemBuilder: (context, _) => Icon(
                          _selectedIcon ?? Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          setState(() {
                            _rating = rating;
                            _ratingDescriptionVisible = rating <= 2;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                _ratingDescriptionVisible
                    ? Container(
                  height: 350,
                  width: MediaQuery.of(context).size.width * 0.88,
                  child: Column(
                    children: [
                      Align(
                          alignment:Alignment.centerLeft,
                          child: Text("Please describe your issue", style: TextStyle(fontSize: 16, ),)),
                      SizedBox(height: 5,),
                      TextField(
                        focusNode: _focusNode,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Write your describe here',
                        ),
                        maxLines: 7,
                        onChanged: (text) {
                          setState(() {
                            _description = text;
                          });
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0, right: 14,top:22 ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.28,
                              height: 40,
                              child: OutlinedButton(
                                onPressed: (){},
                                // {
                                //   Navigator.of(context).pop();
                                // },
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

                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.84,
                          child: OutlinedButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) => _buildPopupDialog(context),
                              );
                            },
                            child: Text('Report an issue', style: TextStyle(color: Colors.blue, fontSize: 19 ),),
                          ),
                          decoration:BoxDecoration(
                            border: Border.all(color:Color(0xFF0672CB)),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            // color: Color(0xFF0672CB),
                          ),
                        ),
                      ),

                    ],
                  ),
                )
                    : Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.84,
                  child: OutlinedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => _buildPopupDialog(context),
                        );
                      },
                      child: Text('Report an issue', style: TextStyle(color: Colors.blue, fontSize: 19 ),),
                  ),
                  decoration:BoxDecoration(
                      border: Border.all(color:Color(0xFF0672CB)),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      // color: Color(0xFF0672CB),
                  ),
                ),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildPopupDialog(BuildContext context) {
    return AlertDialog(

      // title: const Text('Report an Issue', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0, left: 20, top: 17, bottom: 10),
            child: Text("Report an issue"
              ,style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 23,
              ),
            ),
          ),
          IconButton(
            onPressed: (){},
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
                    child: Text("The Glamour Lounge", style: TextStyle(color: Color(0xFF444444), fontSize: 16),),
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
                      value: "Abuse",
                      items: [ //add items in the dropdown
                        DropdownMenuItem(
                          child: Text("Abuse"),
                          value: "Abuse",
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
}



