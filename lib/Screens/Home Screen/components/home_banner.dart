import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "Assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.50),
          ),
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover my Amazing \nArt Space!",
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                MyBuildAnimatedText(),
                SizedBox(height: defaultPadding,),
                ElevatedButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding * 2,
                          vertical: defaultPadding),
                      backgroundColor: primaryColor),
                  onPressed: () {},
                  child: Text(
                    "EXPLORE NOW",
                    style: TextStyle(color: darkColor),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          FlutterCodedText(),
          SizedBox(
            width: defaultPadding / 2,
          ),
          AnimatedTextKit(animatedTexts: [
            TyperAnimatedText("I build Responsive mobile app and web.",
                speed: Duration(milliseconds: 60)),
            TyperAnimatedText("I build Complete e-Commerce app UI.",
                speed: Duration(milliseconds: 60)),
            TyperAnimatedText("I build Quote app with dark and light theme.",
                speed: Duration(milliseconds: 60)),
          ]),
          SizedBox(
            width: defaultPadding / 2,
          ),
          FlutterCodedText(),
        ],
      ),
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
              text: "Flutter",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: primaryColor)),
          TextSpan(text: ">")
        ],
      ),
    );
  }
}