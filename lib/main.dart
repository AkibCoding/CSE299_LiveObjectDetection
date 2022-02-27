import 'package:flutter/material.dart';
import 'package:liveobjectdetection/HomePage.dart';
import 'package:camera/camera.dart';
import 'package:tflite/tflite.dart';

List<CameraDescription> cameras=[];

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  cameras= await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: HomePage(),
    );
  }
}




