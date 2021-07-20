import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                  "Verify your phone number",
                  style: TextStyle(fontSize: 15),
                )),
            TextField(
              decoration: InputDecoration(
                alignLabelWithHint: true,
                border: OutlineInputBorder(),
                hintText: "Enter Phone Number",
                labelText: "Mobile no.",
                labelStyle: TextStyle(fontSize: 20),
              ),
              autofocus: true,
              keyboardType: TextInputType.phone,
              maxLength: 10,
              onChanged: (String value) {
                if (value.length == 10) {}
              },
            ),           
            OutlinedButton(
              onPressed: null,
              child: Text("Send OTP"),
            ),
          ],
        ),
      ),
    );
  }
}
