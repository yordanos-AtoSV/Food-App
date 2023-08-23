import 'package:flutter/material.dart';
import "package:new_proj/popular.dart";
import "meal_a.dart";
import "meal_b.dart";

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 250, 250),
      body: Stack(children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Welcome, Yordi \u{1F44B} ",
                  style: TextStyle(fontFamily: "WorkSans"),
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "Let's find lunch near you ",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: "WorkSans",
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        prefixIcon: Icon(Icons.search),
                        labelText: 'Search',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1,
                            color: Colors.grey)),
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                    TextButton(
                      onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Popular()));
                      },
                      child: const Text("Popular",
                      
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "WorkSans",
                          color: Colors.black),
                    ),),
                    const SizedBox(width: 200),
                    const Text(
                      "All",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "WorkSans",
                          color: Colors.grey),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 240,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 200,
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                const ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8)),
                                  child: Image(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/cover.jpg"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'chicken Fillet',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "WorkSans"),
                                      ),
                                      Text(
                                        'Description',
                                        style: TextStyle(
                                          color: Colors.grey[700],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          const Text("250 ETB"),
                                          const SizedBox(width: 70),
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: const Color.fromARGB(
                                                    255, 237, 78, 10)),
                                            child: IconButton(
                                              onPressed: () {
                                                // Add your button action here
                                              },
                                              icon: Icon(Icons.shopping_cart),
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                const ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8)),
                                  child: Image(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/cover.jpg"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'chicken Fillet',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "WorkSans"),
                                      ),
                                      Text(
                                        'Description',
                                        style: TextStyle(
                                          color: Colors.grey[700],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          const Text("250 ETB"),
                                          const SizedBox(width: 70),
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: const Color.fromARGB(
                                                    255, 237, 78, 10)),
                                            child: IconButton(
                                              onPressed: () {
                                                // Add your button action here
                                              },
                                              icon: Icon(Icons.shopping_cart),
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                const ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8)),
                                  child: Image(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/cover.jpg"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'chicken Fillet',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "WorkSans"),
                                      ),
                                      Text(
                                        'Description',
                                        style: TextStyle(
                                          color: Colors.grey[700],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          const Text("250 ETB"),
                                          const SizedBox(width: 70),
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: const Color.fromARGB(
                                                    255, 237, 78, 10)),
                                            child: IconButton(
                                              onPressed: () {
                                                // Add your button action here
                                              },
                                              icon: Icon(Icons.shopping_cart),
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                const ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8)),
                                  child: Image(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/cover.jpg"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'chicken Fillet',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "WorkSans"),
                                      ),
                                      Text(
                                        'Description',
                                        style: TextStyle(
                                          color: Colors.grey[700],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          const Text("250 ETB"),
                                          const SizedBox(width: 70),
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: const Color.fromARGB(
                                                    255, 237, 78, 10)),
                                            child: IconButton(
                                              onPressed: () {
                                                // Add your button action here
                                              },
                                              icon: Icon(Icons.shopping_cart),
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  "Meal Sets",
                  style: TextStyle(
                      fontFamily: "WorkSans",
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: 340,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Column(
                            children: [
                              const ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25),
                                    bottomLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(25)),
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/cover.jpg"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(width: 20.0),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Meal A',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "WorkSans"),
                                          ),
                                          Text(
                                            'Lorem ipsum dolor sit amet',
                                            style: TextStyle(
                                              color: Colors.grey[700],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 80.0),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: const Color.fromARGB(
                                              255, 237, 78, 10)),
                                      child: IconButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MealA()));
                                        },
                                        icon: Icon(Icons.arrow_forward),
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: 340,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Column(
                            children: [
                              const ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25),
                                    bottomLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(25)),
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/cover.jpg"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(width: 20.0),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Meal B',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "WorkSans"),
                                          ),
                                          Text(
                                            'Lorem ipsum dolor sit amet',
                                            style: TextStyle(
                                              color: Colors.grey[700],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 80.0),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: const Color.fromARGB(
                                              255, 237, 78, 10)),
                                      child: IconButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MealB()));
                                        },
                                        icon: Icon(Icons.arrow_forward),
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30.0),
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
              height: 50,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Stack(children: [
                  Row(
                    children: [
                      Expanded(
                        child: IconButton(
                          onPressed: () {
                            // Add your button action here
                          },
                          icon: Icon(Icons.home),
                          color: Colors.grey,
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          onPressed: () {
                            // Add your button action here
                          },
                          icon: Icon(Icons.favorite),
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 50),
                      Expanded(
                        child: IconButton(
                          onPressed: () {
                            // Add your button action here
                          },
                          icon: Icon(Icons.shopping_cart),
                          color: Colors.grey,
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          onPressed: () {
                            // Add your button action here
                          },
                          icon: Icon(Icons.person),
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ]),
              )),
        ),
        Positioned(
          left: 168,
          right: 168,
          top: 500,
          child: CircleAvatar(
            radius: 215,
            backgroundColor: Color.fromARGB(255, 237, 78, 10),
            child: IconButton(
              onPressed: () {
                // Add your button action here
              },
              icon: Icon(Icons.search),
              color: Colors.white,
            ),
          ),
        ),
      ]),
    );
  }
}
