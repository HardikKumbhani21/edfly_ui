import 'package:edufly/view/sign_up_with.dart';
import 'package:flutter/material.dart';

import 'otp_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  PageController? pageController;
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: height * 0.750,
                width: double.infinity,
                child: PageView(
                  controller: PageController(),
                  onPageChanged: (value) {
                    setState(() {
                      selected = value;
                    });
                  },
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/1.png",
                          height: height * 0.250,
                        ),
                        SizedBox(
                          height: height * 0.060,
                        ),
                        Text(
                          "Welcome to edufly",
                          style: TextStyle(
                            color: Color(0xff3A58F5),
                            fontSize: width * 0.07,
                          ),
                        ),
                        Text(
                          "school ebooks store",
                          style: TextStyle(
                            color: Color(0xff3A58F5),
                            fontSize: width * 0.07,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.030,
                        ),
                        Text(
                          "Explore educaiotn ebooks",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: width * 0.05,
                          ),
                        ),
                        Text(
                          "at edufly app",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: width * 0.05,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/2.png",
                          height: height * 0.250,
                        ),
                        SizedBox(
                          height: height * 0.060,
                        ),
                        Text(
                          "Find out about your",
                          style: TextStyle(
                            color: Color(0xff3A58F5),
                            fontSize: width * 0.07,
                          ),
                        ),
                        Text(
                          " children's ebook in a click",
                          style: TextStyle(
                            color: Color(0xff3A58F5),
                            fontSize: width * 0.07,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.030,
                        ),
                        Text(
                          " Choosing the right books",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: width * 0.05,
                          ),
                        ),
                        Text(
                          " at one place",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: width * 0.05,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/3.png",
                          height: height * 0.250,
                        ),
                        SizedBox(
                          height: height * 0.060,
                        ),
                        Text(
                          "The edufly eBooks Store",
                          style: TextStyle(
                            color: Color(0xff3A58F5),
                            fontSize: width * 0.07,
                          ),
                        ),
                        Text(
                          "offers you millions",
                          style: TextStyle(
                            color: Color(0xff3A58F5),
                            fontSize: width * 0.07,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.030,
                        ),
                        Text(
                          "Millions of titles across categories",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: width * 0.05,
                          ),
                        ),
                        Text(
                          "like Children's book",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: width * 0.05,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 6,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      3,
                      (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                selected = index;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: width * 0.02),
                              height: height * 0.01,
                              width: width * 0.07,
                              decoration: BoxDecoration(
                                  color: selected == index
                                      ? Color(0xff3A58F5)
                                      : Colors.white,
                                  border: Border.all(
                                      color: selected == index
                                          ? Color(0xff3A58F5)
                                          : Colors.grey,
                                      width: 1),
                                  borderRadius:
                                      BorderRadius.circular(width * 0.03)),
                            ),
                          )),
                ),
              )
            ],
          ),
          Expanded(
              child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff02F993), Color(0xff1132D9)],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Container(
                    height: height * 0.06,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: Colors.white, width: 1)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Text(
                          "+1",
                          style: TextStyle(
                              color: Colors.white, fontSize: width * 0.05),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: height * 0.01),
                          child: VerticalDivider(
                            width: 1,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.070,
                        ),
                        Text(
                          "8943983474",
                          style: TextStyle(
                              color: Colors.white, fontSize: width * 0.05),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.0200,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OtpScreen(),
                          ));
                    },
                    color: Colors.white,
                    height: height * 0.06,
                    minWidth: double.infinity,
                    child: Text(
                      "Countinue",
                      style: TextStyle(
                          color: Color(0xff1132D9), fontSize: width * 0.04),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpWith(),
                            ));
                      },
                      child: Text(
                        "Sign up with email / Social media",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
