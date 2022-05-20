import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CryptoDashboard extends StatefulWidget {
  const CryptoDashboard({Key? key}) : super(key: key);

  @override
  State<CryptoDashboard> createState() => _CryptoDashboardState();
}

class _CryptoDashboardState extends State<CryptoDashboard> {
  @override
  Widget build(BuildContext context) {
    bool isSearchActive = false;
    Size size = MediaQuery.of(context).size;
    TextEditingController contr = TextEditingController();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 218, 241, 240),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    radius: 20,
                    backgroundImage: NetworkImage(
                        'https://cdn.r10.net/image.php?r=2&u=121986&avatartime='),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  isSearchActive
                      // ignore: dead_code
                      ? Expanded(
                          child: Container(
                              child: TextField(
                            controller: contr,
                            decoration: InputDecoration(hintText: 'Search'),
                          )),
                        )
                      : Text(
                          'My Wallet',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                  Spacer(),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          isSearchActive = true;
                        });
                      },
                      child: Icon(Icons.search)),
                  PopupMenuButton(
                      itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Text('Share'),
                              onTap: () {},
                            ),
                            PopupMenuItem(child: Text('Send'))
                          ])
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: size.height * 0.25,
                width: size.width,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5), blurRadius: 2),
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2), blurRadius: 2),
                    ],
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.bitcoin,
                              color: Colors.orange,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              'Total Balance',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Container(
                          child: Text(
                            '0.1287654',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Text(
                            '4,990.99 USD',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                        ),
                      ],
                    )),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://img.favpng.com/4/11/4/pie-chart-diagram-computer-icons-png-favpng-XWFGY96iazHaCicv7UJM3dyLK.jpg'))),
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
