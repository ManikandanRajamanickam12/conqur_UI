import 'package:conqur/pages/help_page.dart';
import 'package:conqur/pages/edit_profile.dart';
import 'package:conqur/pages/qrt_result.dart';
import 'package:conqur/pages/qrt_test.dart';
import 'package:conqur/pages/sensor_details.dart';
import 'package:conqur/pages/training.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
        debugShowCheckedModeBanner: false,
        title: 'Conqur',
        themeMode: ThemeMode.light,
        theme: NeumorphicThemeData(
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
          baseColor: Color(0xffEDEDED),
          lightSource: LightSource.topLeft,
          depth: -5,
          shadowLightColorEmboss: Colors.white,
        ),
        darkTheme: const NeumorphicThemeData(
          baseColor: Color(0xFF3E3E3E),
          lightSource: LightSource.topLeft,
          depth: 6,
        ),
        home: QRTTest());
  }
}
