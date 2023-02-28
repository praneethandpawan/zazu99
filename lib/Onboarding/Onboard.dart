import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import '../Pages/Testing.dart';
import '../Pages/User_Auth/user_login.dart';



class ggg extends StatelessWidget {
  const ggg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => TTT()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0672CB),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo here
            Container(
              // color: Colors.red,
              height: 200,
              width: 200,
              child: Image.asset('assets/second_img.png'),
            ),
          ],
        ),
      ),
    );
  }
}


class TTT extends StatefulWidget {
  const TTT({Key? key}) : super(key: key);

  @override
  State<TTT> createState() => _TTTState();
}

class _TTTState extends State<TTT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width*5,
            height: MediaQuery.of(context).size.height*0.1,
                child: Image.asset('assets/Logo3(1).png'),
          ),
          SizedBox(height: 15,),
          Container(
            width: MediaQuery.of(context).size.width*8,
            height: MediaQuery.of(context).size.height*0.4,
                child: Image.asset('assets/onboardingpage2.png'),
          ),
          Container(
            width: MediaQuery.of(context).size.width*1,
            // height: MediaQuery.of(context).size.height*0.4,
            child: Center(child: Text("Lorem ipsum dolor sit amet, consectetuer ")),
          ),
          SizedBox(height: 25,),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.94,
            child: OutlinedButton(
              onPressed:
                  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => User_Merchant_Select()),
                );
              },
              child: Text('Get Started', style: TextStyle(color: Colors.white, fontSize: 19 ),),
            ),
            decoration:BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Color(0xFF0672CB),
            ),
          ),
        ],
      ),
    );
  }
}

class User_Merchant_Select extends StatefulWidget {
  const User_Merchant_Select({Key? key}) : super(key: key);

  @override
  State<User_Merchant_Select> createState() => _User_Merchant_SelectState();
}

class _User_Merchant_SelectState extends State<User_Merchant_Select> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AspectRatio(
              aspectRatio: 15/8,
              child: Container(
                // color: Colors.blueGrey,
                // width: MediaQuery.of(context).size.width*5,
                // height: MediaQuery.of(context).size.height*0.1,
                child: Image.asset('assets/topcloud.png',fit:BoxFit.cover,),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/topcloud.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 15,),

            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => user_login()),
                );
              },
              child: Container(
                // color: Colors.blue,
                width: MediaQuery.of(context).size.width*8,
                height: MediaQuery.of(context).size.height*0.23,
                child: Image.asset('assets/User.png'),
              ),
            ),
            SizedBox(height: 25,),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => otp(title: '',)),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width*8,
                height: MediaQuery.of(context).size.height*0.23,
                child: Image.asset('assets/merchant.png'),
              ),
            ),
            SizedBox(height: 25,),

            // Flexible(
            //   child: Container(
            //     // color: Colors.blueGrey,
            //     // width: MediaQuery.of(context).size.width*5,
            //
            //     // height: MediaQuery.of(context).size.height*0.1,
            //     // color: Colors.red,
            //     child: Image.asset('assets/Bottomcloud.png',fit:BoxFit.cover,),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class www extends StatelessWidget {
  const www({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AspectRatio(
        aspectRatio: 21/9,
        child: Container(
          color: Colors.red,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/topcloud.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}


//
//
// class OnBoard extends StatefulWidget {
//   @override
//   _OnBoardState createState() => _OnBoardState();
// }
//
// class _OnBoardState extends State<OnBoard> {
//   int currentIndex = 0;
//   late PageController _pageController;
//   List<OnboardModel> screens = <OnboardModel>[
//     OnboardModel(
//       img: 'assets/onboardingpagecloudbottom.png',
//       text: "Belajar Dengan Metode Learning by Doing",
//       desc:
//       "Sebuah metode belajar yang terbuktiampuh dalam meningkatkan produktifitas belajar, Learning by Doing",
//       bg: Colors.white,
//       button: Color(0xFF4756DF),
//     ),
//     OnboardModel(
//       img: 'assets/images/img-2.png',
//       text: "Dapatkan Kemudahan Akses Kapanpun dan Dimanapun",
//       desc:
//       "Tidak peduli dimanapun kamu, semua kursus yang telah kamu ikuti bias kamu akses sepenuhnya",
//       bg: Color(0xFF4756DF),
//       button: Colors.white,
//     ),
//     OnboardModel(
//       img: 'assets/1.png',
//       text: "Gunakan Fitur Kolaborasi Untuk Pengalaman Lebih",
//       desc:
//       "Tersedia fitur Kolaborasi dengan tujuan untuk mengasah skill lebih dalam karena bias belajar bersama",
//       bg: Colors.white,
//       button: Color(0xFF4756DF),
//     ),
//   ];
//
//   @override
//   void initState() {
//     _pageController = PageController(initialPage: 0);
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }
//
//   _storeOnboardInfo() async {
//     print("Shared pref called");
//     int isViewed = 0;
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setInt('onBoard', isViewed);
//     print(prefs.getInt('onBoard'));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: currentIndex % 2 == 0 ? kwhite : kblue,
//       appBar: AppBar(
//         backgroundColor: currentIndex % 2 == 0 ? kwhite : kblue,
//         elevation: 0.0,
//         actions: [
//           TextButton(
//             onPressed: () {
//               _storeOnboardInfo();
//               Navigator.pushReplacement(
//                   context, MaterialPageRoute(builder: (context) => Home()));
//             },
//             child: Text(
//               "Skip",
//               style: TextStyle(
//                 color: currentIndex % 2 == 0 ? kblack : kwhite,
//               ),
//             ),
//           )
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20.0),
//         child: PageView.builder(
//             itemCount: screens.length,
//             controller: _pageController,
//             physics: NeverScrollableScrollPhysics(),
//             onPageChanged: (int index) {
//               setState(() {
//                 currentIndex = index;
//               });
//             },
//             itemBuilder: (_, index) {
//               return Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Image.asset(screens[index].img),
//                   Container(
//                     height: 10.0,
//                     child: ListView.builder(
//                       itemCount: screens.length,
//                       shrinkWrap: true,
//                       scrollDirection: Axis.horizontal,
//                       itemBuilder: (context, index) {
//                         return Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Container(
//                                 margin: EdgeInsets.symmetric(horizontal: 3.0),
//                                 width: currentIndex == index ? 25 : 8,
//                                 height: 8,
//                                 decoration: BoxDecoration(
//                                   color: currentIndex == index
//                                       ? kbrown
//                                       : kbrown300,
//                                   borderRadius: BorderRadius.circular(10.0),
//                                 ),
//                               ),
//                             ]);
//                       },
//                     ),
//                   ),
//                   Text(
//                     screens[index].text,
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 27.0,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'Poppins',
//                       color: index % 2 == 0 ? kblack : kwhite,
//                     ),
//                   ),
//                   Text(
//                     screens[index].desc,
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 14.0,
//                       fontFamily: 'Montserrat',
//                       color: index % 2 == 0 ? kblack : kwhite,
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () async {
//                       print(index);
//                       if (index == screens.length - 1) {
//                         await _storeOnboardInfo();
//                         Navigator.pushReplacement(context,
//                             MaterialPageRoute(builder: (context) => Home()));
//                       }
//
//                       _pageController.nextPage(
//                         duration: Duration(milliseconds: 300),
//                         curve: Curves.bounceIn,
//                       );
//                     },
//                     child: Container(
//                       padding:
//                       EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
//                       decoration: BoxDecoration(
//                           color: index % 2 == 0 ? kblue : kwhite,
//                           borderRadius: BorderRadius.circular(15.0)),
//                       child: Row(mainAxisSize: MainAxisSize.min, children: [
//                         Text(
//                           "Next",
//                           style: TextStyle(
//                               fontSize: 16.0,
//                               color: index % 2 == 0 ? kwhite : kblue),
//                         ),
//                         SizedBox(
//                           width: 15.0,
//                         ),
//                         Icon(
//                           Icons.arrow_forward_sharp,
//                           color: index % 2 == 0 ? kwhite : kblue,
//                         )
//                       ]),
//                     ),
//                   )
//                 ],
//               );
//             }),
//       ),
//     );
//   }
// }
//
//
