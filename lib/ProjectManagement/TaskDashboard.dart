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
    Size size = MediaQuery.of(context).size;
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
                flex: 3,
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
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Search',
                              suffixIcon: Icon(UniconsLine.search),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                )),
            Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Last Connections',
                          style: GoogleFonts.cabin(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'See All',
                          style: GoogleFonts.cabin(
                              fontSize: 14, fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://www.cumhuriyet.com.tr/Archive/2022/5/1/1931561/kapak_082251.jpg'),
                                radius: 30,
                              ),
                            );
                          }),
                    )
                  ],
                )),
            Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Active Projects',
                          style: GoogleFonts.cabin(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'See All',
                          style: GoogleFonts.cabin(
                              fontSize: 14, fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Divider(
                                thickness: 2,
                                color: Colors.grey.withOpacity(0.2),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Numero 10',
                                          style: GoogleFonts.cabin(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                        Text(
                                          '4h',
                                          style: GoogleFonts.cabin(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Blog and Social posts',
                                          style: GoogleFonts.cabin(
                                              fontSize: 19,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Icon(UniconsLine.exclamation),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Deadline is today',
                                          style: GoogleFonts.cabin(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                    )
                  ],
                )),
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
