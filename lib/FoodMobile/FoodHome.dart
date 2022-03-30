import 'package:dailydesignsession1/ColorUtilities.dart';
import 'package:flutter/material.dart';

class FoodHome extends StatefulWidget {
  const FoodHome({Key? key}) : super(key: key);

  @override
  State<FoodHome> createState() => _FoodHomeState();
}

class _FoodHomeState extends State<FoodHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtilities.foodMobile,
      body: Container(
          child: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/food.png'))),
                )),
            Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cook Like',
                      style: TextStyle(
                          fontSize: 60,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'A Chef',
                      style: TextStyle(
                          fontSize: 60,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Cook professional dishes',
                      style:
                          TextStyle(fontSize: 17, color: Colors.grey.shade300),
                    ),
                    Text(
                      'right in your kitchen',
                      style:
                          TextStyle(fontSize: 17, color: Colors.grey.shade300),
                    )
                  ],
                )),
            Expanded(flex: 1, child: Placeholder()),
          ],
        ),
      )),
    );
  }
}
