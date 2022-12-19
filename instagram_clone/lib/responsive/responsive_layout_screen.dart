import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/dimensions.dart';

class ReponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
    ReponsiveLayout(
      {super.key,
      required this.webScreenLayout,
      required this.mobileScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,  raints) {
        if ( raints.maxWidth > webScreenSize) {
          return webScreenLayout;
        }
        return mobileScreenLayout;

      },
    );
  }
}
