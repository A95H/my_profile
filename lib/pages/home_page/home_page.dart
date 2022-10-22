import 'package:flutter/material.dart';
import 'package:profile_app/constants/colors_constants.dart';
import 'package:profile_app/pages/home_page/widgets/image_section_widget.dart';
import 'package:profile_app/pages/home_page/widgets/technologies_widget.dart';
import 'package:profile_app/pages/home_page/widgets/work_items_widget.dart';
import 'package:profile_app/pages/home_page/widgets/work_list_widget.dart';
import 'package:profile_app/widgets/header_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ProjectType projectType = ProjectType.Mobile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const HeaderWidget(),
            const SizedBox(height: 50),
            const ImageSectionWidget(),
            const SizedBox(height: 50),
            const TechnologiesWidget(),
            const SizedBox(height: 50),
            const Text(
              "Work",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            DefaultTextStyle(
              style: TextStyle(color: TextGreyColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text("Check my commercial and non commercial projects."),
                  Text(
                      "If you have any question feel free to ask me for more information."),
                ],
              ),
            ),
            const SizedBox(height: 10),
            WorkListWidget(
              selectedType: projectType,
              onSelect: (type) {
                setState(() {
                  projectType = type;
                });
              },
            ),
            WorkItemsWidget(
              projectType: projectType,
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
