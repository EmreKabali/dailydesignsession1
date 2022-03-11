import 'package:flutter/material.dart';

class CreateMeting extends StatefulWidget {
  const CreateMeting({Key? key}) : super(key: key);

  @override
  State<CreateMeting> createState() => _CreateMetingState();
}

class _CreateMetingState extends State<CreateMeting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back))
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Create',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 35),
                          ),
                          Text(
                            'New Meeting',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 35),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Title',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            'Title',
                            style: TextStyle(fontSize: 23),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tags',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            'Demo',
                            style: TextStyle(fontSize: 23),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(9),
                            height: 35,
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
                            height: 35,
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
                            height: 35,
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
                            height: 35,
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
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Placeholder(),
                ),
                Expanded(
                  flex: 3,
                  child: Placeholder(),
                ),
              ],
            )),
      ),
    );
  }
}
