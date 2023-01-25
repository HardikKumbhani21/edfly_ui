import 'package:edufly/view/home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.02, vertical: height * 0.01),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: CircleAvatar(
                        radius: width * 0.04,
                        backgroundColor: Colors.black,
                        child: Icon(Icons.arrow_back,
                            color: Colors.white, size: width * 0.05),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Text(
                  "Please enter the 4-digit code sent\nto you at +91-8943983474",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: width * 0.0450,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              OTPTextField(
                keyboardType: TextInputType.number,
                contentPadding: EdgeInsets.symmetric(
                    horizontal: height * 0.5, vertical: height * 0.030),
                length: 4,
                otpFieldStyle: OtpFieldStyle(
                  borderColor: Colors.blue.shade200,
                  backgroundColor: Colors.blue.shade50,
                  enabledBorderColor: Colors.blue.shade200,
                ),
                width: MediaQuery.of(context).size.width,
                fieldWidth: width * 0.150,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.box,
                onCompleted: (pin) {
                  print("Completed: " + pin);
                },
              ),
              SizedBox(
                height: height * 0.1,
              ),
              Center(
                child: Text(
                  "Resend code in 0:08",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: width * 0.0450,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
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
                  child: Text("Continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: width * 0.05,
                      )),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Expanded(
                  child: TextField(
                    onTap: () {},
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Change Phone Number",
                      hintStyle: TextStyle(color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
