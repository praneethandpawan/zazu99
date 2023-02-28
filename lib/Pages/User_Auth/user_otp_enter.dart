import 'package:flutter/material.dart';
import 'package:otp_pin_field/otp_pin_field.dart';


import '../Maps/current_or_other_location_page.dart';
import 'chips.dart';

class user_otp_enter extends StatefulWidget {
  user_otp_enter({Key? key}) : super(key: key);

  @override
  _user_otp_enterState createState() => _user_otp_enterState();
}

class _user_otp_enterState extends State<user_otp_enter> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: [
              AspectRatio(
                aspectRatio: 15/8,
                child:Container(
                  child: Image.asset('assets/topcloud.png',fit:BoxFit.cover,),
                ),
              ),
              Container(
                child: Text("LOGIN", style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: 25, fontWeight: FontWeight.w700, color: Color(0xFF0672CB)),),
              ),
              SizedBox(height: 25,),
              Padding(
                padding: EdgeInsets.only(left:50,right: 50),
                child: FittedBox(
                  fit: BoxFit.cover,

                  child: Container(
                    child: Row(
                        children: [
                          FittedBox(
                              fit: BoxFit.cover,
                              child: Text("OTP Sent to +91XXXXXXXXXX", style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: 19, fontWeight: FontWeight.w700, color: Color(0xFF0672CB)),)),
                          SizedBox(width: 8,),
                          Container(
                            height: 20,
                            width: 20,
                            child: Image.asset("assets/otpicon.png"),
                          ),
                        ]),
                  ),
                ),

              ),
              SizedBox(height: 35,),

              Container(
                child: Text("Auto Detecting OTP", style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: 18, fontWeight: FontWeight.w400, color: Colors.grey),),
              ),
              SizedBox(height: 15,),
              Container(
                // fit: BoxFit.cover,
                child: OtpPinField(
                    key: _otpPinFieldController,
                    onSubmit: (text) {
                      print('Entered pin is $text');
                    },
                    onChange: (text) {
                      print('Enter on change pin is $text');
                      /// return the entered pin
                    },

                    /// to decorate your Otp_Pin_Field
                    otpPinFieldStyle: const OtpPinFieldStyle(
                      // border color for inactive/unfocused Otp_Pin_Field
                      defaultFieldBorderColor: Colors.grey,
                      // border color for active/focused Otp_Pin_Field
                      activeFieldBorderColor: Colors.grey,
                      /// Background Color for inactive/unfocused Otp_Pin_Field
                      defaultFieldBackgroundColor: Colors.white,
                      activeFieldBackgroundColor: Colors.white,



                      /// Background Color for active/focused Otp_Pin_Field
                    ),
                    maxLength: 6,
                    showCursor: true,
                    /// bool to show cursor in pin field or not
                    cursorColor: Colors.indigo,
                    /// to choose cursor color
                    fieldWidth: 37,
                    middleChild: Column(
                      children: [
                        SizedBox(height: 30),
                        ElevatedButton(
                            onPressed: () {
                              _otpPinFieldController.currentState
                                  ?.clearOtp(); // clear controller
                            },
                            child: Text("clear OTP")),
                        SizedBox(height: 10),
                        ElevatedButton(
                            onPressed: () => Navigator.push(context,
                                MaterialPageRoute(builder: (context) => chips_screen())),
                            child: Text("Next Class")),
                        SizedBox(height: 30),
                      ],
                    ),
                    ///bool which manage to show custom keyboard
                    // customKeyboard: Container(),  /// Widget which help you to show your own custom keyboard in place if default custom keyboard
                    // showDefaultKeyboard: true,  ///bool which manage to show default OS keyboard
                    cursorWidth: 3,

                    /// to select cursor width
                    mainAxisAlignment: MainAxisAlignment.center,

                    /// place otp pin field according to yourselft

                    /// predefine decorate of pinField use  OtpPinFieldDecoration.defaultPinBoxDecoration||OtpPinFieldDecoration.underlinedPinBoxDecoration||OtpPinFieldDecoration.roundedPinBoxDecoration
                    ///use OtpPinFieldDecoration.custom  (by using this you can make Otp_Pin_Field according to yourself like you can give fieldBorderRadius,fieldBorderWidth and etc things)
                    otpPinFieldDecoration:
                    OtpPinFieldDecoration.defaultPinBoxDecoration),
              ),

              SizedBox(height: 25,),
              Padding(
                padding: EdgeInsets.only(left:50,),
                child: Container(
                  child: Row(
                      children: [
                        TextButton(
                            onPressed: ()
                            {

                            },
                            child: Text("Resend", style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: 19, fontWeight: FontWeight.w700, color: Color(0xFF0672CB)),)),
                        SizedBox(width: 5,),
                        Container(
                          child: Text("OTP in 0:56", style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: 19, fontWeight: FontWeight.w700, color: Colors.black),),
                        ),
                      ]),
                ),
              ),
              SizedBox(height: 25,),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.94,
                child: OutlinedButton(
                  onPressed:
                      ()
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => current_or_other_location_page()),
                    );
                  },
                  child: Text('Get Started', style: TextStyle(color: Colors.white, fontSize: 19 ),),
                ),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Color(0xFF0672CB),
                ),
              ),
            ]
        ),
      ),
    );
  }
}

