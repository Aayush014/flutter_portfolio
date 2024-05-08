import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
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
              const Spacer(
                flex: 2,
              ),
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('Assets/images/images.png'),
              ),
              const Spacer(),
              Text(
                "Aayush Patel",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              FittedBox(
                child: Text(
                  "Flutter Developer & Founder of \nWeekend Developers",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
