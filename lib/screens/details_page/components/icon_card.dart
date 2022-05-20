// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: size.height * 0.03,
      ),
      padding: const EdgeInsets.all(
        kDefaultPadding / 2,
      ),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 15),
              blurRadius: 22,
              color: kPrimaryColor.withOpacity(0.22)),
          const BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 20,
            color: Colors.white,
          ),
        ],
      ),
      child: new IconTheme(
        data: const IconThemeData(color: kPrimaryColor, size: 50),
        child: new Icon(icon),
      ),
    );
  }
}
