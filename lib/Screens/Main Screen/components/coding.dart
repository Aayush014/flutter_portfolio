import 'package:flutter/material.dart';

import '../../../Components/animated_progress_indicator_linear.dart';
import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "Dart",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.95,
          label: "Python",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.65,
          label: "C Lang",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "C++",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Database",
        ),
      ],
    );
  }
}