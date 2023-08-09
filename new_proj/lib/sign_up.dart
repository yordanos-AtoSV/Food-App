import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
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
                "Sign Up",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                  fontFamily: 'IBMPlexSans',
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Name',
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Mobile No',
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email Address',
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.all(10.0),
              child: Column(
     
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'By continuing, I confirm that I have read and agree',
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Color.fromARGB(255, 18, 17, 17),
                    ),
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 50.0),
                      RichText(
                        text: const TextSpan(
                          text: 'to the ',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Terms and conditions',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 208, 86, 49),
                              ),
                              // recognizer: TapGestureRecognizer()
                              //   ..onTap = () {
                              //     // Handle button tap event for the specific string
                              //     print('Button tapped');
                              //   },
                            ),
                            TextSpan(
                              text: ' and',
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: ' privacy policy',
                              style: TextStyle(
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 208, 86, 49),
                              ),
                              // recognizer: TapGestureRecognizer()
                              //   ..onTap = () {
                              //     // Handle button tap event for the specific string
                              //     print('Button tapped');
                              //   },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
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
                'Sign Up',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            const SizedBox(height: 8.0),
               Row(
                children: const [
                  Expanded(
                    child: Divider(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'OR',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Expanded(
                    child: Divider(),
                  ),
                ],
              ),
            
          ],
        ),
      ),
    );
  }
}

