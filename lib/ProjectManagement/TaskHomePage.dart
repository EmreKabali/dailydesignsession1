import 'package:dailydesignsession1/ProjectManagement/TaskDashboard.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class TaskHome extends StatefulWidget {
  const TaskHome({Key? key}) : super(key: key);

  @override
  State<TaskHome> createState() => _TaskHomeState();
}

class _TaskHomeState extends State<TaskHome> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getPage(_selectedIndex),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        margin: EdgeInsets.all(7),
        padding: EdgeInsets.all(7),
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setItem(0);
              },
              child: Icon(
                UniconsLine.estate,
                size: 30,
                color: _selectedIndex == 0 ? Colors.black : Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {
                setItem(1);
              },
              child: Icon(
                UniconsLine.folder,
                size: 30,
                color: _selectedIndex == 1 ? Colors.black : Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {
                setItem(2);
              },
              child: Icon(
                UniconsLine.file_check,
                size: 30,
                color: _selectedIndex == 2 ? Colors.black : Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {
                setItem(3);
              },
              child: Icon(
                UniconsLine.setting,
                size: 30,
                color: _selectedIndex == 3 ? Colors.black : Colors.grey,
              ),
            )
          ],
        ),
      )),
    );
  }

  Widget getPage(int index) {
    switch (index) {
      case 0:
        return TaskDashboard();
      case 1:
        return Container();
      case 2:
        return Container();
      case 3:
        return Container();
      default:
        return Container();
    }
  }

  void setItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
