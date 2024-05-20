import 'package:assignment3/Widgets/app_bar.dart';
import 'package:flutter/material.dart';

class PhotoDetailsScreen extends StatefulWidget {
  PhotoDetailsScreen({
    super.key,
    required this.singlePhotoData,
    required this.index,
    required this.detailsImageHeight,
    required this.detailsImageIDFontSize,
    required this.detailsImageTitleFontSize,
    required this.detailsImageWidth,
    required this.detialsMiddleSpaceBetweenImageAndTitle,
  });

  List singlePhotoData;
  final int index;
  final double detailsImageHeight;
  final double detailsImageWidth;
  final double detailsImageTitleFontSize;
  final double detailsImageIDFontSize;
  final double detialsMiddleSpaceBetweenImageAndTitle;

  @override
  State<PhotoDetailsScreen> createState() => _PhotoDetailsScreenState();
}

class _PhotoDetailsScreenState extends State<PhotoDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(appbartitle: "Photo Details"),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: widget.detailsImageHeight,
                  width: widget.detailsImageWidth,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "${widget.singlePhotoData[widget.index]['thumbnailUrl']}"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: widget.detialsMiddleSpaceBetweenImageAndTitle,
                ),
                Text(
                  "Title: ${widget.singlePhotoData[widget.index]['title']}",
                  style: TextStyle(fontSize: widget.detailsImageTitleFontSize),
                ),
                Text(
                  "ID: ${widget.singlePhotoData[widget.index]['id']}",
                  style: TextStyle(fontSize: widget.detailsImageIDFontSize),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
