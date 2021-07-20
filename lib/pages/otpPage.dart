import 'package:flutter/material.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text(
                  "HeyChapra, Welcomes You!",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
            Container(
                margin: EdgeInsets.only(bottom: 25),
                child: Text(
                  "Enter the OTP sent",
                  style: TextStyle(fontSize: 15),
                )),
            TextField(
              decoration: InputDecoration(
                alignLabelWithHint: true,
                border: OutlineInputBorder(),
                hintText: "One Time Password",
                labelText: "Enter OTP",
                labelStyle: TextStyle(fontSize: 20),
                counterText: ""
              ),
              autofocus: true,
              keyboardType: TextInputType.phone,
              maxLength: 04,


              onChanged: (String value) {
                if (value.length == 10) {}
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: () {}, child: Text("Change Number")),
                TextButton(onPressed: () {}, child: Text("Resend OTP")),
              ],
            ),
            // Container(
            //   decoration: BoxDecoration(border: OutlineButton(onPressed: onPressed),
            //   child: TextButton(

            //     onPressed: () {},
            //     child: Text("Send OTP"),
            //   ),
            // ),

            OutlinedButton(
              onPressed: (){},
              // style: ButtonStyle(
              //     fixedSize:
              //         MaterialStateProperty.all<Size>(Size.fromWidth(50))),
              child: Text(" Log In "),
            ),
          ],
        ),
      ),
    );
  }
}
