import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskManager extends StatefulWidget {
  const TaskManager({Key? key}) : super(key: key);

  @override
  State<TaskManager> createState() => _TaskManagerState();
}

class _TaskManagerState extends State<TaskManager> {
  late int selectedIndex;
  int selectedTask = 0;

  @override
  void initState() {
    super.initState();
    selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();

    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(),
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: Icon(
                Icons.home,
                color: selectedIndex == 0
                    ? Color(0xFF560bad)
                    : Colors.grey.shade400,
                size: 30,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              child: Icon(
                Icons.message,
                color: selectedIndex == 1
                    ? Color(0xFF560bad)
                    : Colors.grey.shade400,
                size: 30,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
              child: Icon(
                Icons.calendar_month,
                color: selectedIndex == 2
                    ? Color(0xFF560bad)
                    : Colors.grey.shade400,
                size: 30,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 3;
                });
              },
              child: Icon(
                Icons.settings_outlined,
                color: selectedIndex == 3
                    ? Color(0xFF560bad)
                    : Colors.grey.shade400,
                size: 30,
              ),
            )
          ],
        ),
      ),
      body: Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: SafeArea(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Spacer(),
                      Stack(
                        children: [
                          Icon(
                            Icons.notifications_outlined,
                            size: 29,
                          ),
                          Positioned(
                            right: 4,
                            top: 2,
                            child: Container(
                              height: 9,
                              width: 9,
                              decoration: BoxDecoration(
                                  color: Colors.red, shape: BoxShape.circle),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Search',
                              style: TextStyle(fontSize: 33),
                            ),
                          ],
                        ),
                        Text(
                          'Recent Tasks',
                          style: TextStyle(
                            fontSize: 33,
                            color: Color(0xFF560bad),
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: TextFormField(
                        controller: searchController,
                        decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(color: Colors.grey),
                            icon: Icon(Icons.search, color: Colors.grey),
                            border: InputBorder.none),
                      ),
                    )),
                Expanded(
                    flex: 4,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'In progress',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Expanded(
                          child: ListView.builder(
                              itemCount: 5,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      //we should change selected index with setstate
                                      selectedTask = index;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    width: 120,
                                    height: 160,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                      color: selectedTask == index
                                          ? Color.fromARGB(255, 109, 58, 133)
                                          : Colors.white,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Test Spanish',
                                          style: TextStyle(
                                              color: selectedTask == index
                                                  ? Colors.white
                                                  : Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          '21 Oct',
                                          style: TextStyle(
                                            color: selectedTask == index
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                            width: 45,
                                            height: 45,
                                            decoration: BoxDecoration(
                                                color: Colors.yellow,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Icon(Icons.home_outlined)),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        )
                      ],
                    )),
                Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Todays Lection',
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.bold),
                            ),
                            Icon(CupertinoIcons.line_horizontal_3)
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 109, 58, 133),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(
                                  CupertinoIcons.chart_pie_fill,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Basic Italian',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '22 October',
                                    style: TextStyle(fontSize: 13),
                                  )
                                ],
                              ),
                              Spacer(),
                              Icon(CupertinoIcons.arrow_right)
                            ],
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 15,
                )
              ],
            ),
          )),
    );
  }
}
