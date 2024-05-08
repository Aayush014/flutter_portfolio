import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Skills.dart';
import 'area_info.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
                child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  const AreaInfoText(
                    title: "Residence",
                    text: "Gujarat",
                  ),
                  const AreaInfoText(
                    title: "City",
                    text: "Surat",
                  ),
                  const AreaInfoText(
                    title: "Age",
                    text: "19",
                  ),
                  const Skills(),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  const Coding(),
                  const Knowledges(),
                  Column(
                    children: [
                      const Divider(),
                      const SizedBox(
                        height: defaultPadding / 2,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: FittedBox(
                          child: Row(
                            children: [
                              Text(
                                "DOWNLOAD CV",
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                ),
                              ),
                              const SizedBox(
                                width: defaultPadding / 2,
                              ),
                              SvgPicture.asset("Assets/icons/download.svg")
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: defaultPadding / 2),
                        color: const Color(0xff24242e),
                        child: Row(
                          children: [
                            const Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                    "Assets/icons/linkedin.svg")),
                            IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                    "Assets/icons/github.svg")),
                            IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                    "Assets/icons/dribble.svg")),
                            IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                    "Assets/icons/twitter.svg")),
                            const Spacer()
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
