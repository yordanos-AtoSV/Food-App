import 'package:flutter/material.dart';

class MealA extends StatefulWidget {
  @override
  State<MealA> createState() => _MealAState();
}

class _MealAState extends State<MealA> {
  final List<String> images = [
    'assets/food1.jpg',
    'assets/food2.jpg',
    'assets/food3.jpg',
  ];

  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  bool isExpanded = false;
  bool isSwiped = false;
  void toggleExpansion() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 250, 250),
      body: ListView.builder(
          padding: const EdgeInsets.all(22.0),
          itemCount: 1, // Set the count to 1 since you have a single content
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 10.0),
                const Center(
                  child: Text(
                    "Meal A",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      fontFamily: 'WorkSans',
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                const Center(
                  child: Text(
                    "Ideal meales for workers",
                    style: TextStyle(fontFamily: "WorkSans"),
                  ),
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  height: 200,
                  child: AspectRatio(
                    aspectRatio: 1.0,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25)),
                      child: IntrinsicHeight(
                        child: PageView.builder(
                            controller: _pageController,
                            itemCount: images.length,
                            onPageChanged: (int page) {
                              setState(() {
                                _currentPage = page;
                              });
                            },
                            itemBuilder: (BuildContext context, int index) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  images[index],
                                  fit: BoxFit.cover,
                                ),
                              );
                            }),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                const Center(
                  child: Text(
                    "Shrimp Fried Rice",
                    style: TextStyle(
                        fontFamily: "WorkSans",
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(width: 140),
                    Expanded(
                      child: Container(
                        height: 20, // Set the desired height of the dots
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: images.length,
                          itemBuilder: (BuildContext context, int index) {
                            return AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              width: index == _currentPage
                                  ? 20
                                  : 10, // Change width based on active page
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                shape: index == _currentPage
                                    ? BoxShape.rectangle
                                    : BoxShape
                                        .circle, // Change shape based on active page
                                borderRadius: index == _currentPage
                                    ? const BorderRadius.horizontal(
                                        left: Radius.elliptical(10,
                                            10), // Adjust the horizontal radius as needed
                                        right: Radius.elliptical(10,
                                            10), // Adjust the horizontal radius as needed
                                      )
                                    : null,
                                color: index == _currentPage
                                    ? Colors.red
                                    : Colors
                                        .grey, // Change color based on active page
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Text(
                  "Description",
                  style: TextStyle(
                      fontFamily: "WorkSans",
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  constraints: const BoxConstraints(maxHeight: double.infinity),
                  child: Column(
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                        overflow: isExpanded ? null : TextOverflow.ellipsis,
                        maxLines: isExpanded ? null : 3,
                        style: const TextStyle(fontFamily: "WorkSans"),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: toggleExpansion,
                  child: Text(
                    isExpanded ? 'See Less' : 'See More',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 237, 78, 10),
                        fontWeight: FontWeight.bold,
                        fontFamily: "WorkSans"),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 200,
                  height: 90,
                  child: Stack(children: [
                    Positioned.fill(
                      child: GestureDetector(
                        onHorizontalDragUpdate: (details) {
                          setState(() {
                            isSwiped = details.delta.dx < -10;
                          });
                        },
                        onHorizontalDragEnd: (details) {
                          setState(() {
                            isSwiped = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Color.fromARGB(255, 229, 228, 228),
                          ),
                          child: Row(children: [
                            const SizedBox(
                              width: 110,
                              height: 90,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/cover.jpg"),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              children: [
                                const Text(
                                  "starter",
                                  style: TextStyle(
                                      fontFamily: "WorkSans",
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("Bacil minced pork"),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    const Text(
                                      "80 ETB",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 237, 78, 10)),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: Color.fromARGB(
                                              255, 198, 197, 197)),
                                      child: Row(
                                        children: [
                                          const Text("- 1",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          IconButton(
                                            onPressed: () {
                                              // Add your button action here
                                            },
                                            icon: Icon(Icons.plus_one),
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ]),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: Duration(milliseconds: 300),
                      right: isSwiped ? 0 : -200,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color.fromARGB(255, 237, 78, 10)),
                        child: IconButton(
                          onPressed: () {
                            // Add your button action here
                          },
                          icon: Icon(Icons.shopping_cart),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ]),
                )
              ],
            );
          }),
    );
  }
}
