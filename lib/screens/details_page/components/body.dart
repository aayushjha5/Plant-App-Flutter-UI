// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details_page/components/image_and_icons.dart';
import 'package:plant_app/screens/details_page/components/title_and_price.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          //1st column
          ImageAndIcons(size: size),
          //2nd column
          const TitleAndPrice(
            title: 'angelica',
            country: 'russia',
            price: 440,
          ),
          //3rd column
          const SizedBox(
            height: kDefaultPadding,
          ),
          //4th column
          Row(
            children: [
              //row's 1st part
              SizedBox(
                width: size.width / 2,
                height: 84,
                // ignore: deprecated_member_use
                child: FlatButton(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: const Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              //row's 2nd part
              Expanded(
                  // ignore: deprecated_member_use
                  child: FlatButton(
                onPressed: () {},
                child: const Text("Description"),
              )),
            ],
          ),
          //5th column
          const SizedBox(
            height: kDefaultPadding * 2,
          ),
        ],
      ),
    );
  }
}
