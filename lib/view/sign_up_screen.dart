import 'package:edufly/view/otp_screen.dart';
import 'package:edufly/view/sign_in_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isswitch = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.02, vertical: height * 0.01),
            child: Row(
              children: [
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    radius: width * 0.04,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.close,
                        color: Colors.white, size: width * 0.05),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Center(
            child: Text(
              "Sign Up",
              style: TextStyle(color: Colors.black, fontSize: width * 0.06),
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Container(
              height: height * 0.07,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width * 0.01),
                color: Color(0xffEAF2FE),
                border: Border.all(color: Colors.blue.shade100, width: 1),
              ),
              child: Row(children: [
                Expanded(
                  child: TextField(
                    onTap: () {},
                    decoration: InputDecoration(
                      fillColor: Color(0xffEAF2FE),
                      filled: true,
                      suffixIcon: Icon(
                        Icons.done,
                        color: Color(0xff02F993),
                      ),
                      hintText: "Username",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                )
              ]),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Container(
              height: height * 0.07,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width * 0.01),
                color: Color(0xffEAF2FE),
                border: Border.all(color: Colors.blue.shade100, width: 1),
              ),
              child: Row(children: [
                Expanded(
                  child: TextField(
                    onTap: () {},
                    decoration: InputDecoration(
                      fillColor: Color(0xffEAF2FE),
                      filled: true,
                      suffixIcon: Icon(
                        Icons.done,
                        color: Color(0xff02F993),
                      ),
                      hintText: "email id",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                )
              ]),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Container(
              height: height * 0.07,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width * 0.01),
                color: Color(0xffEAF2FE),
                border: Border.all(color: Colors.blue.shade50, width: 2),
              ),
              child: Row(children: [
                Expanded(
                  child: TextField(
                    onTap: () {},
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                )
              ]),
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.03),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OtpScreen(),
                    ));
              },
              height: height * 0.07,
              minWidth: double.infinity,
              color: Color(0xff3A58F5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(width * 0.02)),
              child: Text("Register",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: width * 0.05,
                  )),
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInScreen(),
                    ));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You have an account?",
                    style: TextStyle(
                        fontSize: width * 0.0450, color: Colors.black),
                  ),
                  Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: width * 0.0450, color: Color(0xff3A58F5)),
                  ),
                ],
              ))
        ]),
      ),
    );
  }
}
