// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_layout_mobile_web/responsive/desktop_body.dart';
import 'package:responsive_layout_mobile_web/responsive/mobile_body.dart';
import 'package:responsive_layout_mobile_web/responsive/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        desktopBody: MobileBody(),
        mobileBody: DesktopBody(),
      ),
    );
  }
}
