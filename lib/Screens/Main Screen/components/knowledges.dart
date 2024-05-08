import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
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
            "Knowledge",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const KnowledgeText(
          text: "Flutter Master",
        ),
        const KnowledgeText(
          text: "Logical Lords",
        ),
        const KnowledgeText(
          text: "Flutter Ui Master",
        ),
        const KnowledgeText(
          text: "Built by Firebase",
        ),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset(
            "Assets/icons/check.svg",
            color: primaryColor,
          ),
          const SizedBox(
            width: defaultPadding / 2,
          ),
          Text(text,style: Theme.of(context).textTheme.bodyMedium,),
        ],
      ),
    );
  }
}
