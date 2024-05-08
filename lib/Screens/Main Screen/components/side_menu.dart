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
      child: Column(
        children: [
          myInfo(),
          Expanded(
              child: SingleChildScrollView(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                AreaInfoText(
                  title: "Residence",
                  text: "Gujarat",
                ),
                AreaInfoText(
                  title: "City",
                  text: "Surat",
                ),
                AreaInfoText(
                  title: "Age",
                  text: "19",
                ),
                Skills(),
                SizedBox(
                  height: defaultPadding,
                ),
                Coding(),
                Knowledges(),
                Column(
                  children: [
                    Divider(),
                    SizedBox(height: defaultPadding/2,),
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
                            SizedBox(
                              width: defaultPadding / 2,
                            ),
                            SvgPicture.asset("Assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding/2),
                      color: Color(
                        0xff24242e
                      ),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(onPressed: () {

                          }, icon: SvgPicture.asset("Assets/icons/linkedin.svg")),
                          IconButton(onPressed: () {

                          }, icon: SvgPicture.asset("Assets/icons/github.svg")),
                          IconButton(onPressed: () {

                          }, icon: SvgPicture.asset("Assets/icons/dribble.svg")),
                          IconButton(onPressed: () {

                          }, icon: SvgPicture.asset("Assets/icons/twitter.svg")),
                          Spacer()
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
    );
  }
}
