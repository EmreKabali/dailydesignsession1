import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios),
                    CircleAvatar(
                      radius: 18,
                      backgroundImage: NetworkImage(
                          'https://www.sketchappsources.com/resources/source-image/profile-illustration-gunaldi-yunus.png'),
                    )
                  ],
                )),
            Expanded(
                flex: 3,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundImage: NetworkImage(
                          'https://cdn.dribbble.com/users/1338391/screenshots/15264109/media/1febee74f57d7d08520ddf66c1ff4c18.jpg?compress=1&resize=400x300'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Martin Ramsey',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RateContainer(Colors.purple.shade400, 'Trusted Family'),
                        SizedBox(
                          width: 15,
                        ),
                        RateContainer(Colors.blue.shade400, 'Care Pro')
                      ],
                    )
                  ],
                )),
            Expanded(flex: 3, child: Placeholder()),
            Expanded(flex: 3, child: Placeholder())
          ],
        ),
      ),
    );
  }
}

class RateContainer extends StatelessWidget {
  Color containerColor;
  String containerText;

  RateContainer(this.containerColor, this.containerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 15,
              child: Icon(
                Icons.bolt,
                color: Colors.yellow,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              containerText,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
