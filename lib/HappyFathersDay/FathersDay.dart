import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FathersDay extends StatefulWidget {
  const FathersDay({Key? key}) : super(key: key);

  @override
  State<FathersDay> createState() => _FathersDayState();
}

class _FathersDayState extends State<FathersDay> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://img.freepik.com/free-vector/flat-father-s-day-illustration_23-2148929199.jpg'),
          ),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          SizedBox(
            height: size.height * 0.1,
            width: size.width * 1,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 186, 104, 26)),
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: size.height / 1.5,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 5.0, right: 5, top: 5),
                            child: Column(
                              children: [
                                Text(
                                  'Father, Thanks for your support and loving care. Wishing you a wonderful life',
                                  style: GoogleFonts.pacifico(
                                    fontSize: 30,
                                    color: Color.fromARGB(255, 224, 183, 60),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://flyclipart.com/thumb2/png-single-flower-transparent-single-flower-images-223101.png'))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: Text('CLICK'),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
