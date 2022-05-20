import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      child: Row(
        children: [
          //1st part
          RichText(
            text: TextSpan(
              children: [
                //1st part within 1st part
                TextSpan(
                  text: "$title\n".toUpperCase(),
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: kTextColor, fontWeight: FontWeight.bold),
                ),
                //2nd part within 1st part
                TextSpan(
                  text: country.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          //2nd part
          Text(
            "\$$price",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
