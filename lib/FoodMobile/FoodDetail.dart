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
                child: Placeholder(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
