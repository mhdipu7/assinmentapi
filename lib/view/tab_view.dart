import 'package:assignment3/Style/size_config.dart';
import 'package:assignment3/full_app.dart';
import 'package:flutter/material.dart';

class TabView extends StatefulWidget {
  const TabView({super.key});

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return FullApp(
            listViewContainerHeight: SizeConfig.screenHeight!/7,
            listViewImageWidth: SizeConfig.screenWidth!/3.34,
            listViewMiddleSpaceBetweenImageAndTitle: SizeConfig.screenWidth!/20,
            listViewImageTitleSize: SizeConfig.screenHeight!/45,

            detailsImageWidth: SizeConfig.screenHeight!/1.8,
            detailsImageHeight: SizeConfig.screenHeight!/1.8,
            detialsMiddleSpaceBetweenImageAndTitle: SizeConfig.screenHeight!/40,
            detailsImageTitleFontSize: SizeConfig.screenHeight!/40,
            detailsImageIDFontSize: SizeConfig.screenHeight!/40,
          );
        } else {
          return FullApp(
            listViewContainerHeight: SizeConfig.screenHeight!/4,
            listViewImageWidth: SizeConfig.screenHeight!/4,
            listViewMiddleSpaceBetweenImageAndTitle: SizeConfig.screenWidth!/40,
            listViewImageTitleSize: SizeConfig.screenWidth!/45,

            detailsImageWidth: SizeConfig.screenWidth!/2,
            detailsImageHeight: SizeConfig.screenWidth!/2,

            detialsMiddleSpaceBetweenImageAndTitle: SizeConfig.screenWidth!/40,
            detailsImageTitleFontSize: SizeConfig.screenWidth!/40,
            detailsImageIDFontSize: SizeConfig.screenWidth!/40,
          );
        }
      },
    );
  }
}
