import 'package:flutter/material.dart';

import '../../../Constants/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: UIColors.white,
        body: Center(
          child: Image.asset(
            'assets/images/Group 5.png',
            height: 290,
            width: 345,
          ),
        )
    );
  }
}
