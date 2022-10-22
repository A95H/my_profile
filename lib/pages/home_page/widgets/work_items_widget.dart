// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:profile_app/constants/colors_constants.dart';

import 'package:profile_app/pages/home_page/widgets/work_list_widget.dart';

class WorkItemsWidget extends StatelessWidget {
  final ProjectType projectType;
  WorkItemsWidget({
    Key? key,
    required this.projectType,
  }) : super(key: key);

  final List<WorkItem> list = [
    WorkItem(
      id: 1,
      projectType: ProjectType.Mobile,
      imagesUrl: [],
      name: "Logos",
      shortDescription:
          "Install, launch, and manage all your Zoho applications with our new mobile app.",
      technologies: ["Dart", "Flutter"],
      imageAssets: "assets/apps_screenshots/logos_app.png",
      appStoreLink:
          "https://apps.apple.com/eg/app/logos-coptic-youth-forum/id1639572048",
      googleStoreLink:
          "https://play.google.com/store/apps/details?id=com.worldyouthweek.logos",
    ),
    WorkItem(
      id: 1,
      projectType: ProjectType.Mobile,
      imagesUrl: [],
      name: "mngm",
      shortDescription:
          "Install, launch, and manage all your Zoho applications with our new mobile app.",
      technologies: ["Dart", "Flutter"],
      imageAssets: "assets/apps_screenshots/mngm_app.png",
      googleStoreLink:
          "https://play.google.com/store/apps/details?id=com.evolveinvestmentholding.mngm",
      appStoreLink: "",
    ),
    WorkItem(
      id: 1,
      projectType: ProjectType.Mobile,
      imagesUrl: [],
      name: "3nuta",
      shortDescription:
          "Install, launch, and manage all your Zoho applications with our new mobile app.",
      technologies: ["Dart", "Flutter"],
      imageAssets: "assets/apps_screenshots/3nuta_app.png",
      googleStoreLink:
          "https://play.google.com/store/apps/details?id=com.creditor.anuta.retailer",
    ),
    WorkItem(
      id: 1,
      projectType: ProjectType.Web,
      imagesUrl: [],
      name: "zoho app",
      shortDescription:
          "Install, launch, and manage all your Zoho applications with our new mobile app.",
      technologies: ["Dart", "Flutter"],
      thumbnail:
          "https://www.zohowebstatic.com/sites/default/files/one/one-tap-launcher.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        for (final item in list.where((e) => e.projectType == projectType))
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildItem(item),
              SizedBox(width: 100),
            ],
          ),
      ],
    );
  }

  Widget _buildItem(WorkItem item) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: Duration(seconds: 1),
      builder: (ctx, val, widget) {
        return Opacity(
          opacity: val as double,
          child: SizedBox(
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                if (item.thumbnail != null)
                  Center(
                    child: Image.network(
                      item.thumbnail!,
                      width: 150,
                    ),
                  )
                else
                  Center(
                    child: Image.asset(
                      item.imageAssets!,
                      width: 180,
                    ),
                  ),
                SizedBox(height: 10),
                Text(
                  item.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    for (final t in item.technologies)
                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(t),
                        ),
                      )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  item.shortDescription,
                  style: TextStyle(color: TextGreyColor),
                ),
                SizedBox(height: 5),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  spacing: 5,
                  runSpacing: 5,
                  children: [
                    if (item.appStoreLink != null)
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          "assets/images/available_app_store.png",
                          width: 90,
                        ),
                      ),
                    if (item.googleStoreLink != null)
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          "assets/images/available_google_play.png",
                          width: 90,
                        ),
                      ),
                    if (item.gitHubLink != null)
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          "assets/images/github.png",
                          width: 90,
                        ),
                      ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "More info",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class WorkItem {
  final String name;
  final List<String> technologies;
  final List<String> imagesUrl;
  final String? thumbnail;
  final String? imageAssets;
  final String shortDescription;
  final int id;
  final ProjectType projectType;
  final String? appStoreLink;
  final String? googleStoreLink;
  final String? gitHubLink;
  WorkItem({
    required this.name,
    required this.technologies,
    required this.imagesUrl,
    required this.shortDescription,
    required this.id,
    required this.projectType,
    this.thumbnail,
    this.imageAssets,
    this.appStoreLink,
    this.googleStoreLink,
    this.gitHubLink,
  });
}
