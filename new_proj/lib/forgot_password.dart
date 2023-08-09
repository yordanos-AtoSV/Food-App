import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
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
                  fontFamily: 'IBMPlexSans',
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
                      color: Color.fromARGB(255, 18, 17, 17),
                    ),
                  ),
                  Text(
                    'will recieve a link to create a new',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 18, 17, 17),
                    ),
                  ),
                  Text(
                    'password via email',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 18, 17, 17),
                    ),
                  ),
                ],
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Email Address',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please enter your email';
                }
                String? myNullableString = value;

                if (myNullableString != null) {
                  if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                      .hasMatch(myNullableString)) {
                    return 'Please enter a valid email address';
                  }
                }
                return null;
              },
              onSaved: (value) {
                // Do something with the email value
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement login functionality
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                )),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.all(16.0)),
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 237, 78, 10)),
              ),
              child: const Text(
                'Send',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
