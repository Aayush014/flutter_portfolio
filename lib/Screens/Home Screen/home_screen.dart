import 'package:flutter/material.dart';
import 'package:flutter_portfolio/Screens/Main%20Screen/main_screen.dart';
import 'components/home_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MainScreen(children: [
          HomeBanner()
        ]),
      ],
    );
  }
}


