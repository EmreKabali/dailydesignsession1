import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ColorUtilities.dart';

class FoodDetail extends StatefulWidget {
  const FoodDetail({Key? key}) : super(key: key);

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  List<String> items = ['Popular', 'Recommended', 'New', 'Old'];
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        CupertinoIcons.arrow_left,
                        color: Colors.grey,
                      ),
                      Text(
                        'Explore',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Icon(
                        CupertinoIcons.search,
                        color: Colors.grey,
                      )
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  flex: 1,
                  child: ListView.builder(
                      itemCount: items.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        var currentItem = items[index];
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedItem = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.all(5),
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: selectedItem == index
                                    ? ColorUtilities.foodMobile
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Text(
                                currentItem,
                                style: TextStyle(
                                    color: selectedItem == index
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        );
                      })),
              Expanded(
                  flex: 10,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          height: 250,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 80,
                                left: 0,
                                right: 0,
                                child: Container(
                                  height: 160,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        const Color(0xFF6D51A5),
                                        const Color(0xFFE4A7C5),
                                      ]),
                                      color: ColorUtilities.foodMobile,
                                      borderRadius: BorderRadius.circular(25)),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                left: MediaQuery.of(context).size.width / 4,
                                child: Container(
                                  height: 170,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage('assets/food.png'))),
                                ),
                              ),
                              Positioned(
                                top: 150,
                                left: 0,
                                right: 0,
                                child: Column(
                                  children: [
                                    Text(
                                      'Asian Food',
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Classic Asian recipes from  top chefs',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey.shade300),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
