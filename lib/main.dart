import 'package:dailydesignsession1/CaringApp/CaringHome.dart';
import 'package:dailydesignsession1/CryptoApp/CryptoLogin.dart';
import 'package:dailydesignsession1/FinanceMobileAPp/FinanceHome.dart';
import 'package:dailydesignsession1/HappyFathersDay/FathersDay.dart';
import 'package:dailydesignsession1/MeetingApp/MeetingHome.dart';
import 'package:dailydesignsession1/ProjectManagement/TaskHomePage.dart';
import 'package:dailydesignsession1/TaskManager/TaskManager.dart';
import 'package:flutter/material.dart';

import 'FoodMobile/FoodHome.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskHome(),
    );
  }
}
