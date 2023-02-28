import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:zazu99/Pages/User_Auth/user_login.dart';
import 'chips.dart';


class User_register extends StatefulWidget {
  const User_register({Key? key}) : super(key: key);

  @override
  State<User_register> createState() => _User_registerState();
}

class _User_registerState extends State<User_register> {
  bool _isVisible = false;
  void updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
              child: Text("SIGNUP", style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: 25, fontWeight: FontWeight.w700, color: Color(0xFF0672CB)),),
            ),
            SizedBox(height: 30,),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, bottom: 18.0, right: 18),
                child: Column(
                  children: [

                    Row(
                      children: [
                        Expanded(
                          child: Text("First Name", style: TextStyle(color: Colors.black, fontSize: 16),),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text("First Name", style: TextStyle(color: Colors.black, fontSize: 16),),
                        ),
                      ],
                    ),
                    SizedBox(height: 7,),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            maxLines: 1,
                            decoration: InputDecoration(
                              hintText: 'First name',
                              //prefixIcon: const Icon(Icons.person),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: TextFormField(
                            maxLines: 1,
                            decoration: InputDecoration(
                              hintText: 'Last name',
                              //prefixIcon: const Icon(Icons.person),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),





                  ],
                ),
              ),

            ),

            Padding(
                padding: const EdgeInsets.only(left: 17.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Mobile Number", style: TextStyle(color: Colors.black, fontSize: 16),))),
            SizedBox(height: 7,),
            Padding(
              padding: const EdgeInsets.only(left: 17.0, right: 17),
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


            Padding(
                padding: const EdgeInsets.only(left: 17.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Email", style: TextStyle(color: Colors.black, fontSize: 16),))),
            SizedBox(height: 7,),
            Padding(
              padding: const EdgeInsets.only(left: 17.0, right: 17),
              child: TextFormField(
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: 'Enter Your Email',
                  //prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 15,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 17.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Password", style: TextStyle(color: Colors.black, fontSize: 16),))),
            SizedBox(height: 7,),
            Padding(
              padding: const EdgeInsets.only(left: 17.0, right: 17),
              child: TextFormField(
                keyboardType: TextInputType.text,
                obscureText: _isVisible ? false : true,
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp(r"\s\b|\b\s"))
                ],
                maxLines: 1,
                // decoration: InputDecoration(
                //   hintText: 'Enter Your Email',
                //   //prefixIcon: const Icon(Icons.person),
                //   border: OutlineInputBorder(
                //     borderRadius: BorderRadius.circular(5),
                //   ),
                // ),

                decoration: InputDecoration(
                  // contentPadding: EdgeInsets.symmetric(vertical: 2,),
                    contentPadding: EdgeInsets.all(14),
                    suffixIcon: IconButton(
                      onPressed: () => updateStatus(),
                      icon: Icon(_isVisible ? Icons.visibility : Icons.visibility_off, color: Color(0xFF4874A5),),
                    ),
                    // fillColor: Color.fromARGB(255, 231, 226, 226),
                    // filled: true,
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey,
                      fontSize: 17,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.grey),
                    )),
              ),
            ),
            const SizedBox(
              height: 15,
            ),

            Padding(
                padding: const EdgeInsets.only(left: 17.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Confirm Password", style: TextStyle(color: Colors.black, fontSize: 16),))),
            SizedBox(height: 7,),
            Padding(
              padding: const EdgeInsets.only(left: 17.0, right: 17),
              child: TextFormField(
                keyboardType: TextInputType.text,
                obscureText: _isVisible ? false : true,
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp(r"\s\b|\b\s"))
                ],
                maxLines: 1,
                // decoration: InputDecoration(
                //   hintText: 'Enter Your Email',
                //   //prefixIcon: const Icon(Icons.person),
                //   border: OutlineInputBorder(
                //     borderRadius: BorderRadius.circular(5),
                //   ),
                // ),

                decoration: InputDecoration(
                  // contentPadding: EdgeInsets.symmetric(vertical: 2,),
                    contentPadding: EdgeInsets.all(14),
                    suffixIcon: IconButton(
                      onPressed: () => updateStatus(),
                      icon: Icon(_isVisible ? Icons.visibility : Icons.visibility_off, color: Color(0xFF4874A5),),
                    ),
                    // fillColor: Color.fromARGB(255, 231, 226, 226),
                    // filled: true,
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(color: Colors.grey,
                      fontSize: 17,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.grey),
                    )),
              ),
            ),

            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left:17),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.94,
                child: OutlinedButton(
                  onPressed:
                      () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => chips_screen()),
                    );
                  },
                  child: Text('Sign Up', style: TextStyle(color: Colors.white, fontSize: 19 ),),
                ),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Color(0xFF0672CB),
                ),
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



            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                child: Row(
                  children: [
                    Text("Already Having Account?", style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: 9, fontWeight: FontWeight.w700, color: Colors.black54),),
                    Container(
                      child: TextButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => user_login()),
                            );
                          },
                          child: Text("Sign In", style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: 9, fontWeight: FontWeight.w700, color: Color(0xFF0672CB)),)),
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
