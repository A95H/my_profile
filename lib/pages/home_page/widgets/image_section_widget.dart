import 'package:flutter/material.dart';
import 'package:profile_app/constants/colors_constants.dart';

class ImageSectionWidget extends StatelessWidget {
  const ImageSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (size.width < 700) {
      return Column(
        children: _buildChildren(size),
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _buildChildren(size),
    );
  }

  List<Widget> _buildChildren(Size size) {
    return [
      CircleAvatar(
        radius: size.height * .15,
        backgroundImage: const AssetImage("assets/images/ali_profile_img.png"),
      ),
      const SizedBox(width: 10),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FittedBox(
            child: Text(
              "Hi, I'm Ali and I'm a",
              style: TextStyle(fontSize: 50),
            ),
          ),
          const FittedBox(
            child: Text(
              "Software Engineer",
              style: TextStyle(
                fontSize: 50,
                color: Colors.white,
                backgroundColor: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 400,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Experienced Mobile Developer adept in all stages of advanced mobile App development using Flutter. Knowledgeable in widgets, testing, clean code, structured code, and debugging processes. Bringing forth expertise in design, installation, testing and maintenance of mobile apps." +
                        "Able to effectively self-manage during independent projects, as well as collaborate in a team setting.",
                    style: TextStyle(
                      color: TextGreyColor,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              OutlinedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.black),
                ),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "Contact Me",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(width: 15),
              OutlinedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.white),
                ),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "Check my work",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          )
        ],
      )
    ];
  }

  double calcFontSize(Size size, double fontSize) {
    return size.width * fontSize * .1;
  }
}
