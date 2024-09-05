// ignore_for_file: prefer_const_constructors,

import 'package:flutter/material.dart';
import 'package:responsive_layout_mobile_web/responsive/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  const ResponsiveLayout(
      {super.key, required this.desktopBody, required this.mobileBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return desktopBody;
        } else {
          return mobileBody;
        }
      },
    );
  }
}
