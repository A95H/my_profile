import 'package:flutter/material.dart';

class TechnologiesWidget extends StatelessWidget {
  const TechnologiesWidget({Key? key}) : super(key: key);
  final Map<String, List<String>> list = const {
    "Dart": ["Flutter"],
    "C#": [".Net Core"],
    "JavaScript": ["Nodejs", "Reactjs"],
    "Typescript": ["Nodejs", "Reactjs", "Angularjs", "loopback4"],
    "Database": ["MongoDB", "MySQL", "SQL Server"],
    "C++": ["Arduino"],
    "Java": ["Android"],
    "Swift": ["iOS"],
    "Version control": ["git"],
  };
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Technologies & Frameworks",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (final key in list.keys) _buildItem(key),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildItem(String key) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 100,
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.indigo[50],
            ),
            child: Text(key),
          ),
          const Icon(Icons.arrow_right_alt_sharp),
          ...list[key]!
              .map(
                (e) => Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.indigo[100]!),
                      ),
                      child: InkWell(
                        hoverColor: Colors.blue[50],
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(e),
                        ),
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
