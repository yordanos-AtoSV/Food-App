import 'package:flutter/material.dart';
import 'package:new_proj/welcome.dart';

class VerifyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 253, 250, 250),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 100.0),
                const Center(
                  child: Text(
                    "Verify Account",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      fontFamily: 'WorkSans',
                    ),
                  ),
                ),
                const SizedBox(height: 100.0),
                Column(
                  children: const [
                    Text("We have sent 4 digit code"),
                    Text("to your phone")
                  ],
                ),
                const SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                          width: 60.0,
                          color: Colors.white,
                          child: TextFormField(
                            obscureText: false,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          )),
                    ),
                    Flexible(
                      child: Container(
                          color: Colors.white,
                          width: 60.0,
                          child: TextFormField(
                            obscureText: false,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          )),
                    ),
                    Flexible(
                      child: Container(
                          color: Colors.white,
                          width: 60.0,
                          child: TextFormField(
                            obscureText: false,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          )),
                    ),
                    Flexible(
                      child: Container(
                          color: Colors.white,
                          width: 60.0,
                          child: TextFormField(
                            obscureText: false,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          )),
                    ),
                  ],
                ),
                const SizedBox(height: 30.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Welcome()));
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
                    'Verify',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
