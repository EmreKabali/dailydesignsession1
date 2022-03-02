import 'package:dailydesignsession1/CaringApp/Profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CaringHome extends StatefulWidget {
  const CaringHome({Key? key}) : super(key: key);

  @override
  State<CaringHome> createState() => _CaringHomeState();
}

class _CaringHomeState extends State<CaringHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
            child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Skip',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 102, 97, 97)),
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 6,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://i.pinimg.com/736x/06/67/c4/0667c45481924dc56ec1b20f5690988a.jpg'))),
                )),
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Text(
                      'Find the Right',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Home Caragiver for You',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                )),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0, left: 10),
                  child: Column(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              elevation: 4,
                              primary: Color.fromARGB(255, 113, 4, 236),
                              minimumSize: Size.fromHeight(50)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Profile()));
                          },
                          child: Text('Register')),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?'),
                          SizedBox(
                            width: 3,
                          ),
                          //to be able to go another page- GestureDetector Widget
                          GestureDetector(
                            onTap: () {
                              //action here
                              //TODO go home page next episode
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Profile()));
                            },
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ))
          ],
        )),
      ),
    );
  }
}
