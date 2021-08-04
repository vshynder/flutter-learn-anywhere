import "package:flutter/material.dart";
import 'package:learn_anywhere_app/colors.dart';
import 'package:learn_anywhere_app/components/main_button.dart';
import 'package:learn_anywhere_app/screens/login/login_screen.dart';
import 'package:learn_anywhere_app/screens/splash/splash_dot.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int step = 0;
  String assetName = 'assets/splash_image_1.png';
  String stepTitle = 'Learn anytime and anywhere';

  onNextPress(context) {
    setState(() {
      if (step == 2) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
        return;
      }
      step += 1;
      assetName = 'assets/splash_image_${step + 1}.png';
      stepTitle = step == 1 ? 'Find a course for you' : 'Improve your skills';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 180.0),
            Image.asset(assetName),
            Text(
              stepTitle,
              style: TextStyle(
                color: dartInk,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Quarantine is the perfect time to spend your day learning something new, from anywhere!',
              style: TextStyle(
                color: darkGrayInk,
                fontSize: 14.0,
              ),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SplashDot(
                  isSelected: step == 0,
                ),
                SplashDot(
                  isSelected: step == 1,
                ),
                SplashDot(
                  isSelected: step == 2,
                ),
              ],
            ),
            SizedBox(height: 72.0),
            MainButton(action: () => onNextPress(context), label: "Next")
          ],
        ),
      ),
    );
  }
}
