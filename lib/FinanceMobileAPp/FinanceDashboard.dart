import 'package:dailydesignsession1/FinanceMobileAPp/Summary.dart';
import 'package:flutter/material.dart';

class FinanceDashboard extends StatefulWidget {
  const FinanceDashboard({Key? key}) : super(key: key);

  @override
  State<FinanceDashboard> createState() => _FinanceDashboardState();
}

class _FinanceDashboardState extends State<FinanceDashboard> {
  double amount = 2;
  double days = 6;
  bool check1 = false;
  bool check2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(15),
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
                SizedBox(
                  height: 10,
                ),
                Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Check',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 32),
                        ),
                        Text(
                          'Daily Analytic',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 32),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Financel analysis is the process of evaluating',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    )),
                Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: 60,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 199, 240, 18)),
                              child: Center(
                                child: Text(
                                  '2K',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Amount',
                                style:
                                    TextStyle(fontSize: 25, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Slider(
                              min: 2,
                              max: 100,
                              thumbColor: Colors.green,
                              label: amount.toString(),
                              activeColor: Color(0xFF5463FF),
                              inactiveColor: Colors.white,
                              value: amount,
                              onChanged: (double newValue) {
                                setState(() {
                                  amount = newValue;
                                });
                              }),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '2K',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                '100K',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: 60,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 199, 240, 18)),
                              child: Center(
                                child: Text(
                                  '150',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Days',
                                style:
                                    TextStyle(fontSize: 25, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Slider(
                              min: 0,
                              max: 10,
                              thumbColor: Colors.green,
                              label: days.toString(),
                              activeColor: Color(0xFF5463FF),
                              inactiveColor: Colors.white,
                              value: days,
                              onChanged: (double newValue) {
                                setState(() {
                                  days = newValue;
                                });
                              }),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '0',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                '10 years',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
                Flexible(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                activeColor: Colors.green,
                                value: check1,
                                onChanged: (value) {
                                  setState(() {
                                    check1 = value!;
                                  });
                                }),
                            Text(
                              'Fundemental Analysis',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                activeColor: Colors.green,
                                value: check2,
                                onChanged: (value) {
                                  setState(() {
                                    check2 = value!;
                                  });
                                }),
                            Text(
                              'Technical Analysis',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    )),
                Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FlatButton(
                            minWidth: MediaQuery.of(context).size.width * 0.4,
                            height: 40,
                            color: Color(0xFF5463FF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Summary()));
                            },
                            child: Text(
                              'Next',
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    )),
              ],
            ),
          )),
    );
  }
}
