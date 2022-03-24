import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Utilities/main_frame.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainFrame(),
    );
  }
}
