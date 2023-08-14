import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 250, 250),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text("Welcome, Yordi \u{1F44B} "),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Let's find lunch near you ",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.0),
                    ),
                  ),
                  Expanded(
                    child: Row(children: [
                      const SizedBox(width: 100.0),
                      Expanded(
                          child: Stack(children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage("assets/avatar.jpg"),
                          radius: 35.0,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            padding: const EdgeInsets.all(2.0),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 237, 78, 10),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                      ]))
                    ]),
                  )
                ],
              ),
              const SizedBox(height: 20.0),
              Container(
                color: Color.fromARGB(255, 255, 255, 255),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))
                    ),
                    prefixIcon: Icon(Icons.search),
                    labelText: 'Search',
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w300
                    )
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const[
                  Text("Popular",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "WorkSans"
                  ),
                  ),
                  SizedBox(width: 200),
                  Text("All",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    fontFamily: "WorkSans"
                  ),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
