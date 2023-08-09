import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.fastfood,
                        size: 48,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        'YERO',
                        style: TextStyle(
                          fontSize: 35,
                          fontFamily: "Bangers",
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0,
                          color: Color.fromARGB(255, 237, 78, 10),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Text(
                      "food App",
                      style: TextStyle(
                        fontFamily: "UbuntuMono",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        color: Color.fromARGB(255, 241, 237, 232),
                      ),
                    )),
                  ],
                ),
              ),
            )));
  }
}
