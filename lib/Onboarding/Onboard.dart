import 'dart:async';
import 'package:flutter/material.dart';
import '../Pages/User_Auth/user_login.dart';

class ggg extends StatelessWidget {
  const ggg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => TTT()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0672CB),
      body: Column(
        children: [
          // logo here

          SizedBox(
            height: 200,
          ),
          Container(
            // color: Colors.red,
            height: 200,
            width: 200,
            child: Image.asset('assets/second_img.png'),
          ),

          Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              // color: Colors.red,
              height: 150,
              width: 150,
              child: Image.asset('assets/SyngyMaxmim.png'),
            ),
          ),
        ],
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
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child :  Padding(
          padding: const EdgeInsets.only(left: 17.0, right:17, bottom: 25),
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.94,
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => User_Merchant_Select()),
                );
              },
              child: Text(
                'Get Started',
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Color(0xFF0672CB),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 5,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Image.asset('assets/Logo3(1).png'),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17.0, right: 17),
            child: Container(
              width: MediaQuery.of(context).size.width * 8,
              height: MediaQuery.of(context).size.height * 0.55,
              child: Image.asset('assets/onboardingpage2.png'),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 1,
            // height: MediaQuery.of(context).size.height*0.4,
            child: Center(
                child: Text("Lorem ipsum dolor sit amet, consectetuer ")),
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
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 100),
            Container(
              // color: Colors.blue,
              width: MediaQuery.of(context).size.width * 8,
              height: MediaQuery.of(context).size.height * 0.13,
              child: Image.asset('assets/roundlogo3.png'),
            ),
            // SizedBox(height: 15,),
            SizedBox(height: 60),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => user_login()),
                );
              },
              child: Container(
                // color: Colors.blue,
                width: MediaQuery.of(context).size.width * 8,
                height: MediaQuery.of(context).size.height * 0.23,
                child: Image.asset('assets/User.png'),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {},
              // {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => user_login()),
              //   );
              // },
              child: Container(
                // color: Colors.blue,
                width: MediaQuery.of(context).size.width * 8,
                height: MediaQuery.of(context).size.height * 0.23,
                child: Image.asset('assets/merchant.png'),
              ),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
