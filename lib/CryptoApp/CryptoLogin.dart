import 'package:flutter/material.dart';

class CryptoLogin extends StatefulWidget {
  const CryptoLogin({Key? key}) : super(key: key);

  @override
  State<CryptoLogin> createState() => _CryptoLoginState();
}

class _CryptoLoginState extends State<CryptoLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8479E1),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/crypto.png'))),
          child: Column(
            children: [
              Expanded(flex: 4, child: Container()),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Excepteur Sint Occaecat',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Cupidatat non...',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 2, right: 2),
                              width: 6,
                              height: 6,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.6),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 2, right: 2),
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.9),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 2, right: 2),
                              width: 6,
                              height: 6,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.6),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          child: Text('Next'),
                        ),
                      ),
                    ),
                  ))
            ],
          )),
    );
  }
}
