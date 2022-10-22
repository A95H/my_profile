// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

enum ProjectType {
  Mobile,
  Web,
  Backend,
  Hardware,
}

class WorkListWidget extends StatelessWidget {
  final void Function(ProjectType type)? onSelect;
  final ProjectType? selectedType;
  const WorkListWidget({
    Key? key,
    this.onSelect,
    this.selectedType = ProjectType.Mobile,
  }) : super(key: key);

  final List<ProjectType> list = const [
    ProjectType.Mobile,
    ProjectType.Web,
    ProjectType.Backend,
    ProjectType.Hardware,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (final item in list) _buildItem(type: item),
          ],
        ),
      ),
    );
  }

  Widget _buildItem({required ProjectType type}) {
    bool isSelected = type == selectedType;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: OutlinedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) => isSelected ? Colors.black : Colors.white,
          ),
        ),
        onPressed: () {
          if (onSelect != null) {
            onSelect!(type);
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            type.toString().split(".").last,
            style: TextStyle(color: isSelected ? Colors.white : Colors.black),
          ),
        ),
      ),
    );
  }
}
