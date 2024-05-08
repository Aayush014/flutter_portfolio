import 'package:flutter/material.dart';

import '../../../constants.dart';

class myInfo extends StatelessWidget {
  const myInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: secondaryColor,),
          child: Column(
            children: [
              Spacer(
                flex: 2,
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('Assets/images/images.png'),
              ),
              Spacer(),
              Text(
                "Aayush Patel",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                "Flutter Developer & Founder of \nWeekend Developers",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w200,
                  height: 1.5,
                ),
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
