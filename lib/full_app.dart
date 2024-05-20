import 'package:assignment3/ListViewScreen/listview_screen.dart';
import 'package:flutter/material.dart';

class FullApp extends StatefulWidget {
  const FullApp(
      {super.key,
      required this.detailsImageWidth,
      required this.detailsImageTitleFontSize,
      required this.detailsImageIDFontSize,
      required this.detailsImageHeight,
      required this.detialsMiddleSpaceBetweenImageAndTitle,
      required this.listViewContainerHeight,
      required this.listViewMiddleSpaceBetweenImageAndTitle,
      required this.listViewImageWidth,
      required this.listViewImageTitleSize,

      });

  final double detailsImageHeight;
  final double detailsImageIDFontSize;
  final double detailsImageTitleFontSize;
  final double detailsImageWidth;
  final double detialsMiddleSpaceBetweenImageAndTitle;

  final double listViewContainerHeight;
  final double listViewImageWidth;
  final double listViewMiddleSpaceBetweenImageAndTitle;
  final double listViewImageTitleSize;

  @override
  State<FullApp> createState() => _FullAppState();
}

class _FullAppState extends State<FullApp> {
  @override
  Widget build(BuildContext context) {
    return PhotoGalleryListviewScreen(
      detailsImageHeight: widget.detailsImageHeight,
      detailsImageIDFontSize: widget.detailsImageIDFontSize,
      detailsImageTitleFontSize: widget.detailsImageTitleFontSize,
      detailsImageWidth: widget.detailsImageWidth,
      detialsMiddleSpaceBetweenImageAndTitle:
          widget.detialsMiddleSpaceBetweenImageAndTitle,
      listViewContainerHeight: widget.listViewContainerHeight,
      listViewImageWidth: widget.listViewImageWidth,
      listViewMiddleSpaceBetweenImageAndTitle:
          widget.listViewMiddleSpaceBetweenImageAndTitle,
      listViewImageTitleSize:
      widget.listViewImageTitleSize,
    );
  }
}
