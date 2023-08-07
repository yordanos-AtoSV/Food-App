import 'package:flutter/material.dart';


class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/cover.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.fastfood,
              size: 48,
              color: Color.fromARGB(255, 27, 25, 25),
            ),
            Text(
              'sign in',
              style: TextStyle(
                fontSize: 35,
                fontFamily: "fonts/Bangers-Regular.ttf",
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
                color: Color.fromARGB(255, 237, 78, 10),
              ),
            ),
            Text(
              "food App",
              style: TextStyle(
                fontFamily: "fonts/UbuntuMono-Regular.ttf",
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Color.fromARGB(255, 26, 25, 25),
              ),
            )
          ],
        ),
      ),
    )));
  }
}
