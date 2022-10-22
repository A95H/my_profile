import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          const Text(
            "A",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: const Text("Work"),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Resume"),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Contact"),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
