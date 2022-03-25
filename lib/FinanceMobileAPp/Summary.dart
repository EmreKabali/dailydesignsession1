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
          child: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Text(
                    'Move',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
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
                            itemBuilder: (BuildContext conttext, int index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                            color: index == selectedDateNumber
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
            Expanded(flex: 4, child: Placeholder()),
            Expanded(flex: 4, child: Placeholder()),
            Expanded(flex: 2, child: Placeholder()),
          ],
        ),
      )),
    );
  }
}
