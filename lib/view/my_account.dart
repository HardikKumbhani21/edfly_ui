import 'package:edufly/view/edit_account.dart';
import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
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
          Container(
            height: height * 0.4,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff02F993), Color(0xff1132D9)],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight)),
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: width * 0.07,
                          ),
                        ),
                        Text(
                          "My Account",
                          style: TextStyle(
                              color: Colors.white, fontSize: width * 0.05),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EditAccount(),
                                ));
                          },
                          child: Text(
                            "Edit",
                            style: TextStyle(
                                color: Colors.white, fontSize: width * 0.05),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  CircleAvatar(
                    radius: width * 0.2,
                    backgroundImage: AssetImage("assets/images/profile.png"),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Text(
                    "Muhammed Hamiz",
                    style:
                        TextStyle(color: Colors.white, fontSize: width * 0.05),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Phone Number",
                      style: TextStyle(
                          color: Colors.black, fontSize: width * 0.05),
                    ),
                    Text(
                      "0789 5291837",
                      style: TextStyle(
                          color: Colors.black, fontSize: width * 0.05),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Text(
                  "INFORMATION",
                  style: TextStyle(
                      color: Color(0xff3A58F5), fontSize: width * 0.05),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Name",
                      style:
                          TextStyle(color: Colors.grey, fontSize: width * 0.05),
                    ),
                    Text(
                      "Muhammed Hamiz",
                      style: TextStyle(
                          color: Colors.black, fontSize: width * 0.05),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Parents Mobile",
                      style:
                          TextStyle(color: Colors.grey, fontSize: width * 0.05),
                    ),
                    Text(
                      "+91 - 8943984537",
                      style: TextStyle(
                          color: Colors.black, fontSize: width * 0.05),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Home",
                      style:
                          TextStyle(color: Colors.grey, fontSize: width * 0.05),
                    ),
                    Text(
                      "+91 - 9995303075",
                      style: TextStyle(
                          color: Colors.black, fontSize: width * 0.05),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
