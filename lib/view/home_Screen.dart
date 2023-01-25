import 'package:edufly/view/detail_screen.dart';
import 'package:edufly/view/my_account.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> iteam = [
    {
      "Images": "assets/images/11.png",
      "Name": "LOWER PRIMARY",
      "Colors": Color(0xffFFF3C7),
    },
    {
      "Images": "assets/images/22.png",
      "Name": "UPPER PRIMARY",
      "Colors": Color(0xffFFE3F6),
    },
    {
      "Images": "assets/images/33.png",
      "Name": "HIGH SCHOOL",
      "Colors": Color(0xffC6FAFF),
    },
    {
      "Images": "assets/images/44.png",
      "Name": "HIGHER SECONDARY",
      "Colors": Color(0xffCEE0FF),
    },
  ];
  final globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Row(
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                    Text(
                      "Menu",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.05,
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/images/profile.png",
                      height: height * 0.07,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Divider(
                thickness: 1,
                color: Colors.grey.shade200,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.person_outline_outlined,
                          color: Colors.indigo,
                          size: width * 0.10,
                        ),
                        Text(
                          " My profile",
                          style: TextStyle(
                              fontSize: width * 0.05, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.lock_open,
                          color: Colors.indigo,
                          size: width * 0.10,
                        ),
                        Text(
                          "Change Password",
                          style: TextStyle(
                              fontSize: width * 0.05, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.settings,
                          color: Colors.indigo,
                          size: width * 0.10,
                        ),
                        Text(
                          "Settings",
                          style: TextStyle(
                              fontSize: width * 0.05, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.file_copy_sharp,
                          color: Colors.indigo,
                          size: width * 0.10,
                        ),
                        Text(
                          "Terms & Condition",
                          style: TextStyle(
                              fontSize: width * 0.05, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.privacy_tip_outlined,
                          color: Colors.indigo,
                          size: width * 0.10,
                        ),
                        Text(
                          "Privacy Policy",
                          style: TextStyle(
                              fontSize: width * 0.05, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Divider(
                      color: Colors.grey.shade200,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.logout,
                          color: Colors.orange,
                          size: width * 0.10,
                        ),
                        Text(
                          "Logout",
                          style: TextStyle(
                              fontSize: width * 0.05, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      key: globalKey,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xff1132D9),
        unselectedIconTheme: IconThemeData(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: "Favourite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "NotiFication"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                  height: height * 0.440,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xff02F993), Color(0xff1132D9)],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight)),
                  child: SafeArea(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Text(
                            "Welcomes,",
                            style: TextStyle(
                                color: Colors.white, fontSize: width * 0.0350),
                          ),
                          Row(
                            children: [
                              Text(
                                "Muhammed Hamiz",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.05),
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: () {
                                    globalKey.currentState!.openDrawer();
                                  },
                                  icon: Icon(
                                    Icons.shopping_cart,
                                    color: Colors.white,
                                    size: width * 0.080,
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          TextField(
                            onTap: () {},
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: height * 0.01),
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(Icons.search),
                              hintText: "Search ebooks",
                              suffixIcon: Icon(Icons.tune),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
              Positioned(
                top: 160,
                left: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                  child: Container(
                    height: height * 0.280,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(width * 0.02)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.04),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                "edufly",
                                style: TextStyle(
                                  foreground: Paint()
                                    ..shader = LinearGradient(colors: [
                                      Color(0xff02F993),
                                      Color(0xff1132D9),
                                    ]).createShader(
                                        Rect.fromLTWH(30, 80, 70, 150)),
                                  fontSize: width * 0.08,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                "Explore million's of\nSchool eBooks For\nall classes",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: width * 0.05),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              MaterialButton(
                                height: height * 0.04,
                                minWidth: width * 0.2,
                                color: Color(0xffBED3F0),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(width * 0.05)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MyAccount(),
                                      ));
                                },
                                child: Text(
                                  "Learn More",
                                  style: TextStyle(color: Color(0xff1132D9)),
                                ),
                              )
                            ],
                          ),
                        ),
                        Image.asset(
                          "assets/images/home.png",
                          height: height * 0.280,
                          width: width * 0.5,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: height * 0.010,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.02),
            child: Column(
              children: [
                Container(
                  height: height * 0.470,
                  width: double.infinity,
                  child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1.1,
                        crossAxisCount: 2,
                        crossAxisSpacing: 7,
                        mainAxisSpacing: 7),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(),
                              ));
                        },
                        child: Container(
                          height: height * 0.2,
                          width: width * 0.4,
                          decoration: BoxDecoration(
                              color: iteam[index]["Colors"],
                              borderRadius:
                                  BorderRadius.circular(width * 0.03)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Image.asset(
                                iteam[index]["Images"],
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                iteam[index]["Name"],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
