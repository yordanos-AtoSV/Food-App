import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';


class ForgotPassword extends StatefulWidget {
  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  String phoneNumber = "", verificationId = "";
  String otp = "", authStatus = "";

  Future<void> verifyPhoneNumber(BuildContext context) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      timeout: const Duration(seconds: 15),
      verificationCompleted: (AuthCredential authCredential) {
        setState(() {
          authStatus = "Your account is successfully verified";
        });
      },
      verificationFailed: (FirebaseAuthException authException) {
        setState(() {
          authStatus = "Authentication failed";
        });
      },
      codeSent: (String verId, [int? forceCodeResent]) {
        verificationId = verId;
        setState(() {
          authStatus = "OTP has been successfully send";
        });
        otpDialogBox(context).then((value) {});
      },
      codeAutoRetrievalTimeout: (String verId) {
        verificationId = verId;
        setState(() {
          authStatus = "TIMEOUT";
        });
      },
    );
  }

  otpDialogBox(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new AlertDialog(
            title: Text('Enter your OTP'),
            content: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(30),
                    ),
                  ),
                ),
                onChanged: (value) {
                  otp = value;
                },
              ),
            ),
            contentPadding: EdgeInsets.all(10.0),
            actions: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  signIn(otp);
                },
                child: Text(
                  'Submit',
                ),
              ),
            ],
          );
        });
  }
    Future<void> signIn(String otp) async {
    await FirebaseAuth.instance
        .signInWithCredential(PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: otp,
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 100.0),
            const Center(
              child: Text(
                "Forgot Password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                  fontFamily: "WorSans",
                ),
              ),
            ),
            const SizedBox(height: 80.0),
            Container(
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.all(10.0),
              child: Column(
                children: const [
                  Text(
                    'Please, enter your eamil address. you',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: "WorSans",
                      color: Color.fromARGB(255, 18, 17, 17),
                    ),
                  ),
                  Text(
                    'will recieve a link to create a new',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: "WorSans",
                      color: Color.fromARGB(255, 18, 17, 17),
                    ),
                  ),
                  Text(
                    'password via email',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: "WorSans",
                      color: Color.fromARGB(255, 18, 17, 17),
                    ),
                  ),
                ],
              ),
            ),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: 'phone',
                hintText: 'Enter Your Phone Number',
                border: OutlineInputBorder(),
                
              ),
              onChanged: (value) {
                phoneNumber = value;
              },

            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () =>{
                phoneNumber == null ? null : verifyPhoneNumber(context),
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.all(16.0)),
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 237, 78, 10)),
              ),
              child: const Text(
                'Generate OTP',
                style: TextStyle(fontSize: 16.0, fontFamily: "WorkSans"),
              ),
            ),
            Text(
              authStatus == "" ? "" : authStatus,
              style: TextStyle(
                  color: authStatus.contains("fail") ||
                          authStatus.contains("TIMEOUT")
                      ? Colors.red
                      : Colors.green),
            )
          ],
        ),
      ),
    );
  }
}
