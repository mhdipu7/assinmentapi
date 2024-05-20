import 'package:assignment3/PhotoDetailsScreen/photo_details_screen.dart';
import 'package:assignment3/RestApi/getApi.dart';
import 'package:assignment3/Widgets/app_bar.dart';
import 'package:flutter/material.dart';

class PhotoGalleryListviewScreen extends StatefulWidget {
  PhotoGalleryListviewScreen({
    super.key,
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
  State<PhotoGalleryListviewScreen> createState() =>
      _PhotoGalleryListviewScreenState(
        detailsImageHeight: detailsImageHeight,
        detailsImageIDFontSize: detailsImageIDFontSize,
        detailsImageTitleFontSize: detailsImageTitleFontSize,
        detailsImageWidth: detailsImageWidth,
        detialsMiddleSpaceBetweenImageAndTitle:
            detialsMiddleSpaceBetweenImageAndTitle,
        listViewContainerHeight: listViewContainerHeight,
        listViewImageWidth: listViewImageWidth,
        listViewMiddleSpaceBetweenImageAndTitle:
            listViewMiddleSpaceBetweenImageAndTitle,
        listViewImageTitleSize: listViewImageTitleSize,
      );
}

class _PhotoGalleryListviewScreenState
    extends State<PhotoGalleryListviewScreen> {
  _PhotoGalleryListviewScreenState({
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

  List photosData = [];
  bool isLoading = false;

  callData() async {
    isLoading = true;
    var data = await getApi();

    setState(() {
      photosData = data;
      isLoading = false;
    });
  }

  @override
  void initState() {
    callData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(appbartitle: "Photo Gallery App"),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: isLoading == true
            ? Center(child: CircularProgressIndicator())
            : ListView.separated(
                itemCount: photosData.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PhotoDetailsScreen(
                                    index: index,
                                    singlePhotoData: photosData,
                                    detailsImageHeight: detailsImageHeight,
                                    detailsImageIDFontSize:
                                        detailsImageIDFontSize,
                                    detailsImageTitleFontSize:
                                        detailsImageTitleFontSize,
                                    detailsImageWidth: detailsImageWidth,
                                    detialsMiddleSpaceBetweenImageAndTitle:
                                        detialsMiddleSpaceBetweenImageAndTitle,
                                  )));
                    },
                    child: Container(
                      height: listViewContainerHeight,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: MediaQuery.sizeOf(context).width / 3,
                              //  width: listViewImageWidth,
                            
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "${photosData[index]['thumbnailUrl']}"))),
                            ),
                          ),
                          SizedBox(
                            width: listViewMiddleSpaceBetweenImageAndTitle,
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              "${photosData[index]['title']}",
                              style: TextStyle(
                                fontSize: listViewImageTitleSize,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (_, index) {
                  return Divider(
                    color: Colors.transparent,
                  );
                },
              ),
      ),
    );
  }
}
