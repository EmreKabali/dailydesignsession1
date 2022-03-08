import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  double sliderValue = 0;
  double sliderValueforAmount = 0;
  bool selectTab1 = false;
  bool selectTab2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                //App Bar custom
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: Row(
                      children: [Icon(Icons.arrow_back_ios)],
                    ),
                  ),
                ),
                //Location informations sctions
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Location',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Manhattan, NY',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.place_outlined,
                            size: 30,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                //Service type section- it should change dynamic data
                Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Select Service Type',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 19),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: ServiceType(),
                              );
                            },
                          ),
                        )
                      ],
                    )),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Distance',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )
                        ],
                      ),
                      Slider(
                        activeColor: Color.fromARGB(255, 37, 175, 175),
                        value: sliderValue,
                        onChanged: (double value) {
                          setState(() {
                            sliderValue = value;
                          });
                        },
                        max: 25,
                        divisions: 5,
                        label: sliderValue.toString(),
                      )
                    ],
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Over this amount',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )
                          ],
                        ),
                        Slider(
                          activeColor: Color.fromARGB(255, 37, 175, 175),
                          value: sliderValueforAmount,
                          onChanged: (double value) {
                            setState(() {
                              sliderValueforAmount = value;
                            });
                          },
                          max: 50,
                          divisions: 10,
                          label: sliderValueforAmount.toString(),
                        )
                      ],
                    )),
                Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Regularly Schedule',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 300,
                                        child: Text(
                                            'Work the same hours every week Work the same hours every week Work the same hours every week'),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectTab1 = !selectTab1;
                                  });
                                },
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.shade400),
                                      color: selectTab1
                                          ? Colors.green
                                          : Colors.white,
                                      shape: BoxShape.circle),
                                  child: selectTab1
                                      ? Icon(
                                          Icons.done,
                                          color: Colors.white,
                                        )
                                      : null,
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Regularly Schedule',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 300,
                                        child: Text(
                                            'Work the same hours every week Work the same hours every week Work the same hours every week'),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectTab2 = !selectTab2;
                                  });
                                },
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.shade400),
                                      color: selectTab2
                                          ? Colors.green
                                          : Colors.white,
                                      shape: BoxShape.circle),
                                  child: selectTab2
                                      ? Icon(
                                          Icons.done,
                                          color: Colors.white,
                                        )
                                      : null,
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

class ServiceType extends StatelessWidget {
  const ServiceType({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://illlustrations.co/static/188160589e999c63c66e0efeaed56ce4/ee604/105-freelancer.png'),
        ),
        Text(
          'Senior',
          style: TextStyle(fontSize: 12),
        )
      ],
    );
  }
}
