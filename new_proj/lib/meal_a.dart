import 'package:flutter/material.dart';
import 'package:new_proj/verify_account.dart';

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
                  child: Expanded(
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
                    SizedBox(width: 140),
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
              ],
            );
          }),
    );
  }
}
