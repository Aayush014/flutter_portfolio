import 'package:flutter/material.dart';
import '../../../constants.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({
    this.title,
    this.text,
    super.key,
  });

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(
            text!,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
