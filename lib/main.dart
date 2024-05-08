import 'package:flutter/material.dart';
import 'package:flutter_portfolio/Screens/Home%20Screen/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aayush's Portfolio",
      // we are using dark theme and we modify it as our need
      theme: ThemeData.dark(useMaterial3: false).copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme:
            GoogleFonts.jetBrainsMonoTextTheme(Theme.of(context).textTheme)
                .apply(bodyColor: Colors.white)
                .copyWith(
                  bodyLarge: const TextStyle(color: bodyTextColor),
                  bodyMedium: const TextStyle(color: bodyTextColor),
                ),
      ),
      home: const Banner(
          message: 'Portfolio',
          location: BannerLocation.topEnd,
          child: HomeScreen()),
    );
  }
}
