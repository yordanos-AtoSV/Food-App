import 'package:flutter/material.dart';

class Popular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 253, 250, 250),
        body: Stack(children: [
          SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.all(22.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(height: 40.0),
              const Center(
                child: Text(
                  "Popular",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "WorkSans",
                  ),
                ),
              ),
              const SizedBox(height: 20),
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
              const SizedBox(height: 20),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color.fromARGB(255, 229, 228, 228)),
                  height: 90,
                  child: Row(children: [
                    const SizedBox(
                      width: 110,
                      height: 90,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/food3.jpg"),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 5),
                          Text(
                            "Dessert",
                            style: TextStyle(
                                fontFamily: "WorkSans",
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            "Red Pork and rice",
                            style:
                                TextStyle(fontFamily: "WorkSans", fontSize: 17),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "80 ETB",
                            style: TextStyle(
                                color: Color.fromARGB(255, 237, 78, 10),
                                fontFamily: "WorkSans",
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ]),
                  ])),
              const SizedBox(height: 20),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color.fromARGB(255, 229, 228, 228)),
                  height: 90,
                  child: Row(children: [
                    const SizedBox(
                      width: 110,
                      height: 90,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/food3.jpg"),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 5),
                          Text(
                            "Dessert",
                            style: TextStyle(
                                fontFamily: "WorkSans",
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            "Red Pork and rice",
                            style:
                                TextStyle(fontFamily: "WorkSans", fontSize: 17),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "80 ETB",
                            style: TextStyle(
                                color: Color.fromARGB(255, 237, 78, 10),
                                fontFamily: "WorkSans",
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ]),
                  ])),
              const SizedBox(height: 20),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color.fromARGB(255, 229, 228, 228)),
                  height: 90,
                  child: Row(children: [
                    const SizedBox(
                      width: 110,
                      height: 90,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/food3.jpg"),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 5),
                          Text(
                            "Dessert",
                            style: TextStyle(
                                fontFamily: "WorkSans",
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            "Red Pork and rice",
                            style:
                                TextStyle(fontFamily: "WorkSans", fontSize: 17),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "80 ETB",
                            style: TextStyle(
                                color: Color.fromARGB(255, 237, 78, 10),
                                fontFamily: "WorkSans",
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ]),
                  ])),
              const SizedBox(height: 20),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color.fromARGB(255, 229, 228, 228)),
                  height: 90,
                  child: Row(children: [
                    const SizedBox(
                      width: 110,
                      height: 90,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/food3.jpg"),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 5),
                          Text(
                            "Dessert",
                            style: TextStyle(
                                fontFamily: "WorkSans",
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            "Red Pork and rice",
                            style:
                                TextStyle(fontFamily: "WorkSans", fontSize: 17),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "80 ETB",
                            style: TextStyle(
                                color: Color.fromARGB(255, 237, 78, 10),
                                fontFamily: "WorkSans",
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ]),
                  ])),
              const SizedBox(height: 20),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color.fromARGB(255, 229, 228, 228)),
                  height: 90,
                  child: Row(children: [
                    const SizedBox(
                      width: 110,
                      height: 90,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/food3.jpg"),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 5),
                          Text(
                            "Dessert",
                            style: TextStyle(
                                fontFamily: "WorkSans",
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            "Red Pork and rice",
                            style:
                                TextStyle(fontFamily: "WorkSans", fontSize: 17),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "80 ETB",
                            style: TextStyle(
                                color: Color.fromARGB(255, 237, 78, 10),
                                fontFamily: "WorkSans",
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ]),
                  ])),
              const SizedBox(height: 20),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color.fromARGB(255, 229, 228, 228)),
                  height: 90,
                  child: Row(children: [
                    const SizedBox(
                      width: 110,
                      height: 90,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/food3.jpg"),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 5),
                          Text(
                            "Dessert",
                            style: TextStyle(
                                fontFamily: "WorkSans",
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            "Red Pork and rice",
                            style:
                                TextStyle(fontFamily: "WorkSans", fontSize: 17),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "80 ETB",
                            style: TextStyle(
                                color: Color.fromARGB(255, 237, 78, 10),
                                fontFamily: "WorkSans",
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ]),
                  ])),
              const SizedBox(height: 20),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color.fromARGB(255, 229, 228, 228)),
                  height: 90,
                  child: Row(children: [
                    const SizedBox(
                      width: 110,
                      height: 90,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/food3.jpg"),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 5),
                          Text(
                            "Dessert",
                            style: TextStyle(
                                fontFamily: "WorkSans",
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            "Red Pork and rice",
                            style:
                                TextStyle(fontFamily: "WorkSans", fontSize: 17),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "80 ETB",
                            style: TextStyle(
                                color: Color.fromARGB(255, 237, 78, 10),
                                fontFamily: "WorkSans",
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ]),
                  ]))
            ]),
          )),
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
        ]));
  }
}
