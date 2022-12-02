import 'package:flutter/material.dart';
import 'package:w09_ytu_flutter_app/loginpage.dart';
import 'package:w09_ytu_flutter_app/statefullwidgetpage.dart';
import 'package:w09_ytu_flutter_app/statelesswidget.dart';

import 'camerapage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: ColorScheme.light()),
      home: TakePicturePage(),
    );
  }
}
