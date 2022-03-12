import 'package:flutter/material.dart';

class TaskManager extends StatefulWidget {
  const TaskManager({Key? key}) : super(key: key);

  @override
  State<TaskManager> createState() => _TaskManagerState();
}

class _TaskManagerState extends State<TaskManager> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
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
                flex: 3,
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
            Expanded(flex: 2, child: Placeholder()),
            Expanded(flex: 4, child: Placeholder()),
            Expanded(flex: 3, child: Placeholder()),
          ],
        ),
      )),
    );
  }
}
