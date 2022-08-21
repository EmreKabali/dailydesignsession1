import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

class TaskDashboard extends StatefulWidget {
  const TaskDashboard({Key? key}) : super(key: key);

  @override
  State<TaskDashboard> createState() => _TaskDashboardState();
}

class _TaskDashboardState extends State<TaskDashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://image.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Hi, Kira!',
                      style: GoogleFonts.aBeeZee(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.7)),
                    ),
                    Spacer(),
                    Notification()
                  ],
                )),
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Tasks for Today:',
                          style: GoogleFonts.cabin(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          UniconsLine.star,
                          color: Color.fromARGB(255, 213, 196, 42),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '5 available',
                          style: GoogleFonts.josefinSans(
                              fontSize: 17, fontWeight: FontWeight.normal),
                        )
                      ],
                    )
                  ],
                )),
            Expanded(flex: 2, child: Placeholder()),
            Expanded(flex: 5, child: Placeholder()),
          ],
        ),
      ),
    );
  }
}

class Notification extends StatelessWidget {
  const Notification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
            decoration:
                BoxDecoration(color: Colors.red, shape: BoxShape.circle),
          ),
        )
      ],
    );
  }
}
