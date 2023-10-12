import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(
                child: Icon(
                  Icons.fastfood,
                  size: 48,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              Expanded(
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
                "fOOD APP",
                style: TextStyle(
                  fontFamily: "WorkSans",
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Color.fromARGB(255, 241, 237, 232),
                ),
              )),
            ],
          )
      ));
    
        
        
    
  }
  
}
