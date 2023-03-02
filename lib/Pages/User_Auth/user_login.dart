import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:zazu99/Pages/User_Auth/user_otp_enter.dart';
import 'package:zazu99/Pages/User_Auth/user_registerpage.dart';


class user_login extends StatefulWidget {
  const user_login({Key? key}) : super(key: key);

  @override
  State<user_login> createState() => _user_loginState();
}

class _user_loginState extends State<user_login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              child: Text("LOGIN", style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: 25, fontWeight: FontWeight.w700, color: Color(0xFF0672CB)),),
            ),
            SizedBox(height: 30,),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 17),
                child: Container(
                  child: Text("Phone Number", style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: 22, fontWeight: FontWeight.w700,color: Colors.black,),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: IntlPhoneField(
                decoration: InputDecoration(
                  labelText: 'Enter your mobile number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
                onCountryChanged: (country) {
                  print('Country changed to: ' + country.name);
                },
              ),
            ),

            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.94,
              child: OutlinedButton(

                onPressed:
                    () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => user_otp_enter()),
                  );
                },
                child: Text('Login With OTP', style: TextStyle(color: Colors.white, fontSize: 19 ),),
              ),
              decoration:BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color(0xFF0672CB),
              ),
            ),

            SizedBox(height: 30,),

            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey),
                      height: 2,
                      margin:  EdgeInsets.all(15),
                      // margin: CustomPaddings.horizontal(),
                    ),
                  ),
                  Text(
                    "Let’s Sign in with",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey),
                      height: 2,
                      margin:  EdgeInsets.all(15),
                      // margin: CustomPaddings.horizontal(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),

            ListTile(
              title: Row(
                children: <Widget>[
                  Expanded(child: OutlinedButton(
                    onPressed: () {},child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 25,
                          child: Image.asset("assets/glogo.png"),
                        ),
                        SizedBox(width: 5,),
                        Text('Google', style: TextStyle(color: Colors.black54, fontSize: 15 ),)]),)),
                  SizedBox(width: 18,),
                  Expanded(child: OutlinedButton(
                    onPressed: () {},child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 25,
                          child: Image.asset("assets/flogo.png"),
                        ),
                        SizedBox(width: 5,),
                        Text('Google', style: TextStyle(color: Colors.black54, fontSize: 15 ),)]),)),
                ],
              ),
            ),

            SizedBox(height: 30,),

            Container(
              child: TextButton(
                  onPressed: (){},
                  child: Text("Forgot Password?", style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: 17, fontWeight: FontWeight.w700, color: Color(0xFF0672CB)),)),
            ),
            Align(
              alignment: Alignment.center,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Want to create new account?", style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: 13, fontWeight: FontWeight.w700, color: Colors.black54),),
                  Container(
                    child: TextButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => User_register()),
                          );
                        },
                        child: Text("Sign Up", style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: 9, fontWeight: FontWeight.w700, color: Color(0xFF0672CB)),)),
                  ),
                ],
              ),
            ),
            ),

          ],
        ),

      ),
    );
  }
}
