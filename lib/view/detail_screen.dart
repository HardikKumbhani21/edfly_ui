import 'package:edufly/view/order_success.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<Map<String, dynamic>> iteam = [
    {
      "Images": "assets/images/b1.png",
    },
    {
      "Images": "assets/images/b2.png",
    },
    {
      "Images": "assets/images/b3.png",
    },
    {
      "Images": "assets/images/b4.png",
    },
    {
      "Images": "assets/images/b5.png",
    },
  ];
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.2),
        child: Container(
          height: height * 0.190,
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
                  padding: EdgeInsets.only(left: width * 0.04),
                  child: Row(
                    children: [
                      Text(
                        "Lower Primary ",
                        style: TextStyle(
                            color: Colors.white, fontSize: width * 0.06),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                            size: width * 0.080,
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: TextField(
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
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: height * 0.730,
            width: double.infinity,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderSuccess(),
                        ));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: width * 0.02, vertical: height * 0.01),
                    height: height * 0.170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(width * 0.03)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * 0.04,
                        ),
                        Image.asset(iteam[index]["Images"]),
                        SizedBox(
                          width: width * 0.04,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              "Lower Primary Level  1",
                              style: TextStyle(
                                  color: Colors.black, fontSize: width * 0.05),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              "Paperback – 1 ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: width * 0.0400),
                            ),
                            SizedBox(
                              height: height * 0.00100,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: width * 0.05,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: width * 0.05,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: width * 0.05,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: width * 0.05,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.grey.shade200,
                                  size: width * 0.05,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.00100,
                            ),
                            Text(
                              "By None (Author)",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: width * 0.0400),
                            ),
                          ],
                        ),
                        Text(
                          "₹ 660.00",
                          style: TextStyle(color: Color(0xff3A58F5)),
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
    );
  }
}
