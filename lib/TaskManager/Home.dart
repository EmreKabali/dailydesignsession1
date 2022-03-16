import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                          ]),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
                Expanded(flex: 6, child: Placeholder())
              ],
            )),
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
