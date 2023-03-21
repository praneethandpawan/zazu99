import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../like.dart';
import '../../../Testing.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            padding: const EdgeInsets.only(top: 6, bottom: 4),
                            child: VerticalDivider(
                              width: 20,
                              color: Colors.black,
                              thickness: 1,
                            ),
                          ),

                          SizedBox(
                            height: 50,
                            width: 170,
                            child: fivestar(),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 6, bottom: 4),                          child: VerticalDivider(
                            width: 20,
                            color: Colors.black,
                            thickness: 1,
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
                                Uri phoneno = Uri.parse('tel:+97798345348734');
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

                      SizedBox(
                        height: 35,
                        width: 35,
                        child: Image.asset("assets/fbsym.png"),
                      ),


                      SizedBox(
                        height: 35,
                        width: 35,
                        child: Image.asset("assets/whatsappsym.png"),
                      ),


                      SizedBox(
                        height: 35,
                        width: 35,
                        child: Image.asset("assets/ytsym.png"),
                      ),


                      SizedBox(
                        height: 35,
                        width: 35,
                        child: Image.asset("assets/mapsym.png"),
                      ),


                      SizedBox(
                        height: 35,
                        width: 35,
                        child: Image.asset("assets/sharesym.png"),
                      ),


                    ],
                  ),
                ),



                Divider(
                  color: Colors.grey,
                  height: 10,
                  thickness: 1,
                ),

                Container(
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


                Divider(
                  color: Colors.grey,
                  height: 10,
                  thickness: 1,
                ),


                Padding(
                  padding: const EdgeInsets.only(bottom: 6),
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
                  padding: const EdgeInsets.only(top: 6, bottom: 6),
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
                
                SizedBox(
                  child: Image.asset("assets/ads99.png"),
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


                Container(
                  height: 150,
                  width: 80,
                  color: Colors.red,
                  child: Row(),
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


                SizedBox(
                  child:Column(
                    children: [
                      Text("•"+"  Hair-cutting, colouring and styling", style: TextStyle(fontSize: 20, ),),
                      Text("•"+"  Hair-cutting, colouring and styling", style: TextStyle(fontSize: 20, ),),
                      Text("•"+"  Hair-cutting, colouring and styling", style: TextStyle(fontSize: 20, ),),
                      Text("•"+"  Hair-cutting, colouring and styling", style: TextStyle(fontSize: 20, ),),
                      Text("•"+"  Hair-cutting, colouring and styling", style: TextStyle(fontSize: 20, ),),
                      Text("•"+"  Hair-cutting, colouring and styling", style: TextStyle(fontSize: 20, ),),
                      Text("•"+"  Hair-cutting, colouring and styling", style: TextStyle(fontSize: 20, ),),
                      Text("•"+"  Hair-cutting, colouring and styling", style: TextStyle(fontSize: 20, ),),
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
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0, bottom: 6),
                                child: Align(
                                    alignment:Alignment.centerLeft,
                                    child: Text("ANNOUNCMENT", style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.w600),)),
                              ),

                              Flexible(child: Text("We are opening a new branch in KPHP.We are opening a new branch in KPHP. We are opening a new branch in KPHP. We are opening a new branch in KPHP.",
                                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400))),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: new Text(
                      'Rate Merchant',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19, color: Color(0xFF0672CB))
                  ),
                ),

                SizedBox(
                  height: 100,
                  width: 500,
                  child: fivestar2(),
                ),

                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.84,
                  child: OutlinedButton(
                    onPressed:(){},
                    //     {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => Home(sortedReportList: [],)),
                    //   );
                    // },
                    child: Text('Report an issue', style: TextStyle(color: Colors.blue, fontSize: 19 ),),
                  ),
                  decoration:BoxDecoration(
                    border: Border.all(color:Color(0xFF0672CB)),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    // color: Color(0xFF0672CB),
                  ),
                ),
                SizedBox(height: 50,),
              ],
            ),
          ),
      ),
    );
  }
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
                    itemSize: 20,
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
            child:  Container(
              color: Colors.white,
              // padding: const EdgeInsets.symmetric(vertical: 200),
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
                  _rating = rating;
                  setState(() {});
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
