import 'package:edufly/view/sign_in_screen.dart';
import 'package:flutter/material.dart';

class SignUpWith extends StatefulWidget {
  const SignUpWith({Key? key}) : super(key: key);

  @override
  State<SignUpWith> createState() => _SignUpWithState();
}

class _SignUpWithState extends State<SignUpWith> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.02, vertical: height * 0.01),
            child: Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
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
            ),
          ),
          SizedBox(
            height: height * 0.150,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "edufly",
                    style: TextStyle(
                        foreground: Paint()
                          ..shader = LinearGradient(colors: [
                            Color(0xff02F993),
                            Color(0xff1132D9),
                          ]).createShader(Rect.fromLTWH(130, 70, 200, 50)),
                        fontSize: width * 0.150,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign up with Social media",
                      style: TextStyle(
                          color: Colors.black, fontSize: width * 0.0400),
                    )),
                MaterialButton(
                  onPressed: () {},
                  height: height * 0.07,
                  minWidth: double.infinity,
                  color: Colors.indigo,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(width * 0.02)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/facebook.png"),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Text("CONTINUE WITH FACEBOOK",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInScreen(),
                        ));
                  },
                  height: height * 0.07,
                  minWidth: double.infinity,
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(width * 0.02)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/google.png"),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Text("CONTINUE WITH GOOGLE",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                MaterialButton(
                  onPressed: () {},
                  height: height * 0.07,
                  minWidth: double.infinity,
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(width * 0.02)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/apple.png"),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Text("CONTINUE WITH APPLE",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
