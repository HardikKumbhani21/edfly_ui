import 'package:edufly/view/home_Screen.dart';
import 'package:edufly/view/sign_up_screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
              "Sign In",
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
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: Row(children: [
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "+1",
                  style:
                      TextStyle(color: Colors.black, fontSize: width * 0.0400),
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: height * 0.01),
                  child: VerticalDivider(
                    thickness: 1.5,
                    color: Colors.grey,
                  ),
                ),
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
          Padding(
            padding: EdgeInsets.only(right: width * 0.04),
            child: Row(
              children: [
                Switch.adaptive(
                    value: isswitch,
                    activeColor: Colors.green,
                    onChanged: (bool value) {
                      setState(
                        () {
                          isswitch = value;
                        },
                      );
                    }),
                Text(
                  "Remind me",
                  style:
                      TextStyle(color: Colors.black, fontSize: width * 0.0400),
                ),
                Spacer(),
                Text(
                  "Forget Password?",
                  style:
                      TextStyle(color: Colors.blue, fontSize: width * 0.0400),
                ),
              ],
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
                      builder: (context) => HomeScreen(),
                    ));
              },
              height: height * 0.07,
              minWidth: double.infinity,
              color: Color(0xff3A58F5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(width * 0.02)),
              child: Text("Login",
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
                      builder: (context) => SignUpScreen(),
                    ));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                        fontSize: width * 0.0450, color: Colors.black),
                  ),
                  Text(
                    "Sign Up",
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
