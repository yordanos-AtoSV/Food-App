import 'package:Food_delivery_app/welcome.dart';
import 'package:flutter/material.dart';
import 'package:Food_delivery_app/verify_account.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _auth = FirebaseAuth.instance;

  String email = "";
  String password = '';
  String number = "";

  bool showSpinner = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 250, 250),
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: SingleChildScrollView(
          child: Padding(
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
                      fontFamily: 'WorkSans',
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Name',
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                Container(
                  color: Colors.white,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Mobile No',
                    ),
                    onChanged: (value) {
                      number = value;
                    },
                  ),
                ),
                const SizedBox(height: 16.0),
                Container(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email Address',
                    ),
                    onChanged: (value) {
                      email = value;
                    },
                  ),
                ),
                const SizedBox(height: 16.0),
                Container(
                  color: Colors.white,
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 184, 59, 59),
                              width: 100.0)),
                      labelText: 'Password',
                    ),
                    onChanged: (value) {
                      password = value;
                    },
                  ),
                ),
                const SizedBox(height: 16.0),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text:
                        'By continuing, I confirm that I have read and agree to the ',
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'terms and conditions',
                        style: TextStyle(
                          color: Color.fromARGB(255, 244, 97, 24),
                        ),
                        // recognizer: TapGestureRecognizer()
                        //   ..onTap = () {
                        //     // Handle terms and conditions link press
                        //   },
                      ),
                      TextSpan(text: ' and '),
                      TextSpan(
                        text: 'privacy policy',
                        style: TextStyle(
                          color: Color.fromARGB(255, 244, 97, 24),
                        ),
                        // recognizer: TapGestureRecognizer()
                        //   ..onTap = () {
                        //     // Handle privacy policy link press
                        //   },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () async {
                    setState(() {
                      showSpinner = true;
                    });
                    try {
                      final newUser =
                          await _auth.createUserWithEmailAndPassword(
                              email: email, password: password);
                      if (newUser != null) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Welcome()));
                      }
                    } catch (e) {
                      print(e);
                    }
                    setState(() {
                      showSpinner = false;
                    });
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
                    'Sign Up',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: const [
                    Expanded(
                      child: Divider(
                        color: Colors.black87,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'OR',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                              color: Color.fromARGB(255, 196, 193, 193)),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 75.0),
                            const SizedBox(height: 48.0),
                            Image.network(
                                'http://pngimg.com/uploads/google/google_PNG19635.png',
                                width: 35.0,
                                fit: BoxFit.cover),
                            const SizedBox(
                              width: 5.0,
                            ),
                            TextButton(
                                onPressed: () {
                                  signInWithGoogle();
                                },
                                child: const Text(
                                  'Continue with Google',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                              color: Color.fromARGB(255, 196, 193, 193)),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 75.0),
                            Image.network(
                                'https://www.facebookbrand.com/wp-content/uploads/2019/04/f_logo_RGB-Hex-Blue_512.png',
                                width: 25.0,
                                fit: BoxFit.cover),
                            const SizedBox(
                              width: 4.0,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Continue with Facebook',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<UserCredential?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication gAuth = await gUser!.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken,
        idToken: gAuth.idToken,
      );
      final newUser =
          await FirebaseAuth.instance.signInWithCredential(credential);
      if (newUser != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Welcome()));
      }
    } catch (error) {
      print("Error signing in: $error");
      throw FirebaseAuthException(code: 'unknown', message: 'Sign-in failed');
    }
  }
}
