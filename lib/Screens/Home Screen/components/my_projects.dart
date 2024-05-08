import 'package:flutter/material.dart';
import 'package:flutter_portfolio/Screens/Home%20Screen/components/project_card.dart';
import 'package:flutter_portfolio/responsive.dart';
import '../../../Models/project.dart';
import '../../../constants.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        const Responsive(
            mobile: ProjectsGridViewBuilder(
              crossAxisCount: 1,
              childAspectRatio: 1.9,
            ),
            mobileLarge: ProjectsGridViewBuilder(
              crossAxisCount: 2,
              // childAspectRatio: 1.5,
            ),
            tablet: ProjectsGridViewBuilder(
              childAspectRatio: 1.1,
            ),
            desktop: ProjectsGridViewBuilder())
      ],
    );
  }
}

class ProjectsGridViewBuilder extends StatelessWidget {
  const ProjectsGridViewBuilder({
    super.key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: myProjects.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding,
          childAspectRatio: childAspectRatio),
      itemBuilder: (context, index) => ProjectCard(
        project: myProjects[index],
      ),
    );
  }
}
