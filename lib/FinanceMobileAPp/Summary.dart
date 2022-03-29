import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Summary extends StatefulWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  int selectedDateNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: SafeArea(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Text(
                        'Move',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23),
                      )
                    ],
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: ListView.builder(
                                //TODO: It should be day number as dynamic
                                scrollDirection: Axis.horizontal,
                                itemCount: 10,
                                itemBuilder:
                                    (BuildContext conttext, int index) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedDateNumber = index;
                                          });
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(left: 15),
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: index == selectedDateNumber
                                                  ? Color(0xFF5463FF)
                                                  : Colors.transparent,
                                              shape: BoxShape.circle),
                                          child: Center(
                                              child: Text(
                                            index.toString(),
                                            style: TextStyle(
                                                color:
                                                    index == selectedDateNumber
                                                        ? Colors.white
                                                        : Colors.black),
                                          )),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      selectedDateNumber == index
                                          ? Container(
                                              margin: EdgeInsets.only(left: 15),
                                              height: 4,
                                              width: 25,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Color(0xFF5463FF)),
                                            )
                                          : Container()
                                    ],
                                  );
                                }),
                          )
                        ],
                      ),
                    )),
                Expanded(
                    flex: 4,
                    child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(17),
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              //TODO: Find new png background file
                              image: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2017/07/13/17/49/square-background-2501276_960_720.png')),
                          color: Color(0xFF5463FF),
                          borderRadius: BorderRadius.circular(80)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'TOTAL BALANCE',
                            style: TextStyle(color: Colors.grey.shade300),
                          ),
                          Text(
                            ' 11,693.20',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 30),
                          ),
                          Text(
                            '+895,56 - 3,6 %',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    )),
                Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Transaction',
                              style: TextStyle(fontSize: 20),
                            ),
                            Spacer(),
                            Text(
                              'View All',
                              style: TextStyle(color: Colors.grey.shade600),
                            ),
                            Icon(CupertinoIcons.arrow_right)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Today'),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: ListView.builder(
                              itemCount: 10,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  margin: EdgeInsets.only(
                                      left: 15, right: 15, bottom: 10),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 23,
                                        backgroundImage: NetworkImage(
                                            'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Andrew Yung',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            '8:45 AM',
                                            style: TextStyle(
                                              fontSize: 11,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Text(
                                        '+156',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green),
                                      )
                                    ],
                                  ),
                                );
                              }),
                        )
                      ],
                    )),
                Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.refresh,
                          color: Color(0xFF5463FF),
                        ),
                        Text(
                          'Update',
                          style:
                              TextStyle(fontSize: 20, color: Color(0xFF5463FF)),
                        )
                      ],
                    )),
              ],
            ),
          )),
    );
  }
}
