import 'package:dailydesignsession1/FinanceMobileAPp/FinanceDashboard.dart';
import 'package:flutter/material.dart';

class FinanceHome extends StatefulWidget {
  const FinanceHome({Key? key}) : super(key: key);

  @override
  State<FinanceHome> createState() => _FinanceHomeState();
}

class _FinanceHomeState extends State<FinanceHome> {
  List<String> profilePictures = [
    'https://bestprofilepictures.com/wp-content/uploads/2020/06/Anonymous-Profile-Picture-1024x1024.jpg',
    'https://bestprofilepictures.com/wp-content/uploads/2020/07/Awesome-Profile-Picture-For-Facebook-1024x1024.jpg',
    'https://bestprofilepictures.com/wp-content/uploads/2021/04/Awesome-Profile-Pic.jpg',
    'https://wallpapersflix.com/cool/wp-content/uploads/2020/07/Cool-Android-Wallpaper.jpg'
  ];
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
                        Text(
                          'Share Our App',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 32),
                        ),
                        Text(
                          'With Everyone',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 32),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Financel analysis is used  to evaluate',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 30,
                        ),
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
                                          FinanceDashboard()));
                            },
                            child: Text(
                              'Share',
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    )),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  flex: 7,
                  child: ListView.builder(
                      itemCount: profilePictures.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        var currentData = profilePictures[index];
                        return Container(
                          margin: EdgeInsets.all(8),
                          width: 180,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    currentData,
                                  ))),
                        );
                      }),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            )),
      ),
    );
  }
}
