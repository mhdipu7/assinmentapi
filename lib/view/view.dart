import 'package:assignment3/Style/size_config.dart';
import 'package:assignment3/view/desktop_view.dart';
import 'package:assignment3/view/mobile_view.dart';
import 'package:assignment3/view/tab_view.dart';
import 'package:flutter/material.dart';

class DeviceView extends StatefulWidget {
  const DeviceView({super.key});

  @override
  State<DeviceView> createState() => _DeviceViewState();
}

class _DeviceViewState extends State<DeviceView> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 412) {
          return MobileView();
        } else if (constraints.maxWidth < 800) {
          return TabView();
        } else {
          return DesktopView();
        }
      },
    );
  }
}
