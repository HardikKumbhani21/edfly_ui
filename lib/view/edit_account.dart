import 'package:flutter/material.dart';

import 'home_Screen.dart';

class EditAccount extends StatefulWidget {
  const EditAccount({Key? key}) : super(key: key);

  @override
  State<EditAccount> createState() => _EditAccountState();
}

class _EditAccountState extends State<EditAccount> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
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
                          "Edit Account",
                          style: TextStyle(
                              color: Colors.white, fontSize: width * 0.05),
                        ),
                        Text(
                          "Edit",
                          style: TextStyle(
                              color: Colors.white, fontSize: width * 0.05),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height * 0.520,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Text(
                        "PERSONAL INFO",
                        style: TextStyle(
                            color: Colors.indigo, fontSize: width * 0.05),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      TextField(
                        onTap: () {},
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "First Name",
                          labelStyle: TextStyle(
                              color: Color(0xff3A58F5),
                              fontSize: width * 0.0450),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.orange, width: 2),
                          ),
                        ),
                      ),
                      TextField(
                        onTap: () {},
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Last Name",
                          labelStyle: TextStyle(
                              color: Colors.grey, fontSize: width * 0.0450),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.orange, width: 2),
                          ),
                        ),
                      ),
                      TextField(
                        onTap: () {},
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Date of Birth",
                          labelStyle: TextStyle(
                              color: Colors.grey, fontSize: width * 0.0450),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.orange, width: 2),
                          ),
                        ),
                      ),
                      TextField(
                        onTap: () {},
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Moblie",
                          labelStyle: TextStyle(
                              color: Colors.grey, fontSize: width * 0.0450),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.orange, width: 2),
                          ),
                        ),
                      ),
                      TextField(
                        onTap: () {},
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Home",
                          labelStyle: TextStyle(
                              color: Colors.grey, fontSize: width * 0.0450),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.orange, width: 2),
                          ),
                        ),
                      ),
                      TextField(
                        onTap: () {},
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Work",
                          labelStyle: TextStyle(
                              color: Colors.grey, fontSize: width * 0.0450),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.orange, width: 2),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ADDRESS",
                            style: TextStyle(
                                color: Colors.indigo, fontSize: width * 0.05),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      TextField(
                        onTap: () {},
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Street",
                          labelStyle: TextStyle(
                              color: Colors.grey, fontSize: width * 0.0450),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.orange, width: 2),
                          ),
                        ),
                      ),
                      TextField(
                        onTap: () {},
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Town",
                          labelStyle: TextStyle(
                              color: Colors.grey, fontSize: width * 0.0450),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.orange, width: 2),
                          ),
                        ),
                      ),
                      TextField(
                        onTap: () {},
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Zip Code",
                          labelStyle: TextStyle(
                              color: Colors.grey, fontSize: width * 0.0450),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.orange, width: 2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
                  child: Text("Back to home",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: width * 0.05,
                      )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
