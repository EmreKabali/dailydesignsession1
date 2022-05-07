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
    TextEditingController contr = TextEditingController();
    return Scaffold(
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
            ],
          ),
        ),
      ),
    );
  }
}
