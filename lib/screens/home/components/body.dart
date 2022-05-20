import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/featured_plants.dart';
import 'package:plant_app/screens/home/components/header_with_searchbox.dart';
import 'package:plant_app/screens/home/components/recommended_plants.dart';
import 'package:plant_app/screens/home/components/title_with_more_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //its for exhibiting scrollable behaviour on small devices.
    return SingleChildScrollView(
      //column is for whole body
      child: Column(
        children: <Widget>[
          //divinding the body into parts
          //A
          HeaderWithSearchBox(size: size),
          //B
          const TitlewithMoreButton(
            title: 'Recommended',
          ),
          //C
          const RecommendedPlants(),
          //D
          const TitlewithMoreButton(
            title: 'Featured Plants',
          ),
          //E
          const FeaturedPlants(),
          //F
          const SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
