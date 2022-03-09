import 'package:flutter/material.dart';

class MeetingHome extends StatefulWidget {
  const MeetingHome({Key? key}) : super(key: key);

  @override
  State<MeetingHome> createState() => _MeetingHomeState();
}

class _MeetingHomeState extends State<MeetingHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF533E85),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Stack(
                  children: [
                    Positioned(
                      top: 30,
                      left: 5,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 25,
                          )),
                    ),
                    Positioned(
                      top: 0,
                      right: 6,
                      bottom: 0,
                      left: 2,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://i.pinimg.com/originals/77/d0/a7/77d0a7c454e658833800528e748edbe9.png'))),
                      ),
                    )
                  ],
                )),
            Expanded(
              flex: 2,
              child: Container(
                //Device width
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 13.0, right: 13),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Design Demo Meeting',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 23),
                          ),
                          Icon(
                            Icons.favorite_outline,
                            color: Color(0xFF533E85),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            padding: EdgeInsets.all(9),
                            height: 40,
                            child: Text(
                              'UI/UX',
                              style: TextStyle(color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.blue.shade400,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Container(
                            margin: EdgeInsets.all(5),
                            padding: EdgeInsets.all(9),
                            height: 40,
                            child: Text(
                              'design',
                              style: TextStyle(color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.blue.shade400,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Container(
                            margin: EdgeInsets.all(5),
                            padding: EdgeInsets.all(9),
                            height: 40,
                            child: Text(
                              'presantation',
                              style: TextStyle(color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.blue.shade400,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Container(
                            margin: EdgeInsets.all(5),
                            padding: EdgeInsets.all(9),
                            height: 40,
                            child: Text(
                              'work',
                              style: TextStyle(color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.blue.shade400,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
