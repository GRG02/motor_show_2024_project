import 'package:flutter/material.dart';
import 'package:motor_show_2024_app/views/introduction_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => IntroductionUI(),
        ),
      ),
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 181, 85),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.22,
            ),
            Image.asset(
              'assets/images/logo.png',
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            Text(
              'Motor Show 2024',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.1,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              'New Age of Driving Experience',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.05,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            CircularProgressIndicator(
              color: Color.fromARGB(255, 253, 222, 197),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Text(
              'Created by Rachtipong',
            ),
            Text(
              'DTI SAU 2024',
            ),
          ],
        ),
      ),
    );
  }
}