import 'package:edufly/view/home_Screen.dart';
import 'package:flutter/material.dart';

class OrderSuccess extends StatefulWidget {
  const OrderSuccess({Key? key}) : super(key: key);

  @override
  State<OrderSuccess> createState() => _OrderSuccessState();
}

class _OrderSuccessState extends State<OrderSuccess> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.3,
            ),
            Center(
              child: CircleAvatar(
                radius: width * 0.15,
                backgroundColor: Color(0xff3A58F5),
                child: Icon(
                  Icons.done,
                  color: Colors.white,
                  size: width * 0.10,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              "Order Success ",
              style:
                  TextStyle(color: Color(0xff3A58F5), fontSize: width * 0.07),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Text(
              " Thanks for the payment\nour executive will call you \n    for the confirmation ",
              style: TextStyle(
                  color: Colors.black, fontSize: width * 0.05, height: 1.5),
            ),
            SizedBox(
              height: height * 0.260,
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
      ),
    );
  }
}
