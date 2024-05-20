import 'package:assignment3/Style/size_config.dart';
import 'package:assignment3/Style/style.dart';
import 'package:assignment3/view/view.dart';
import 'package:device_preview_minus/device_preview_minus.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      
     DevicePreview(builder: (context)=>PhotoGalleryApp())

  );
}

class PhotoGalleryApp extends StatelessWidget {
  const PhotoGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      home: DeviceView(),
      theme: ThemeData(
          scaffoldBackgroundColor: primaryColor,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.blue,
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
              iconTheme: IconThemeData(color: Colors.white, size: 30),
              elevation: 8,
              shadowColor: Colors.grey),
          textTheme: TextTheme(
            bodyMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          )),
    );
  }
}
