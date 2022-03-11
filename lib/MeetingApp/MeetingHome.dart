import 'package:dailydesignsession1/MeetingApp/CreateMeeting.dart';
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
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade100,
                                borderRadius: BorderRadius.circular(6)),
                            child: Icon(
                              Icons.date_range,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Date'),
                              Text(
                                'Friday 26, Feb',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade100,
                                borderRadius: BorderRadius.circular(6)),
                            child: Icon(
                              Icons.watch_later,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Date'),
                              Text(
                                '3:00 - 4:00 PM',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                          Text(
                            'About',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 320,
                                child: Text(
                                  'The accent color is blue, it’s quite neutral and doesn’t distract users from important elements of the interfaceCreate an online meeting that is convenient for both sides.',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                'Read More',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      //TODO It should be more clear
                      Row(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Positioned(
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundImage: NetworkImage(
                                        'https://www.dolutarafi.com/wp-content/uploads/2022/02/Dijital-Hikaye-Anlatimi-1024x576.png'),
                                  ),
                                ),
                                Positioned(
                                  left: 20,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        'https://www.dolutarafi.com/wp-content/uploads/2022/02/I%CC%87s%CC%A7-Plani-S%CC%A7ablonlari-1024x576.png'),
                                  ),
                                ),
                                Positioned(
                                  left: 40,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        'https://www.dolutarafi.com/wp-content/uploads/2022/02/Pasif-gelir-nasil-olusturabilirim-1024x576.png'),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Text(
                            '+10 Participate',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)))),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CreateMeting()));
                                  },
                                  child: Text('Take Part'))),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
