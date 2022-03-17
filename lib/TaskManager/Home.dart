import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(CupertinoIcons.arrow_left),
                        ),
                        Notification()
                      ],
                    )),
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Todays Lection',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Expanded(
                        child: Container(
                          height: 100,
                          padding: EdgeInsets.all(15),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 109, 58, 133),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Stack(children: [
                            Text(
                              '21.10.2021',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            Positioned(
                              top: 20,
                              child: Text(
                                'Basic Italian',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Positioned(
                              top: 60,
                              child: Text(
                                '+21 New Classmates',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 5,
                              child: CircleAvatar(
                                radius: 23,
                                backgroundImage: NetworkImage(
                                    'https://www.sketchappsources.com/resources/source-image/profile-illustration-gunaldi-yunus.png'),
                              ),
                            ),
                            Positioned(
                              bottom: 5,
                              left: 30,
                              child: CircleAvatar(
                                radius: 23,
                                backgroundImage: NetworkImage(
                                    'https://cdn.dribbble.com/users/1355613/screenshots/15252730/media/28f348daf9654c440f5dcf398d8e097a.jpg?compress=1&resize=400x300&vertical=top'),
                              ),
                            ),
                            Positioned(
                              bottom: 5,
                              left: 60,
                              child: CircleAvatar(
                                radius: 23,
                                backgroundImage: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDMAQz3CzsKrr-fAiZQu_2Wnw6LvlQ3Oaa059T5aC-OJM6IDaIIYXAL82Go__2DWMfbbc&usqp=CAU'),
                              ),
                            ),
                            Positioned(
                              bottom: 5,
                              left: 90,
                              child: CircleAvatar(
                                radius: 23,
                                backgroundImage: NetworkImage(
                                    'https://w1.pngwing.com/pngs/743/500/png-transparent-circle-silhouette-logo-user-user-profile-green-facial-expression-nose-cartoon.png'),
                              ),
                            ),
                            Positioned(
                              bottom: 3,
                              right: 0,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    CupertinoIcons.arrow_right,
                                    color: Colors.white,
                                  )),
                            )
                          ]),
                        ),
                      ),
                      SizedBox(
                        height: 10,
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
                        Row(
                          children: [
                            Text(
                              'Files',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: ListView.builder(
                              itemCount: 10,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (BuildContext context, int inde) {
                                return CardItem();
                              }),
                        )
                      ],
                    ))
              ],
            )),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 50, left: 5, right: 5),
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://img.icons8.com/nolan/64/file.png'))),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Words B2',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '10 pages',
                  style: TextStyle(fontSize: 11),
                )
              ],
            ),
            Spacer(),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://img.icons8.com/external-flatart-icons-lineal-color-flatarticons/64/000000/external-arrow-arrow-flatart-icons-lineal-color-flatarticons-4.png'))),
            )
          ],
        ));
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
