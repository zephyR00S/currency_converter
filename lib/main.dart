import 'package:currency_converter/material_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//types of widget
//1. StatelessWidget - Sate is immutable - once the widget is created the data cannot be changed
//2.StatefulWidget
//3.UnhereritedWidget

//state is some data which determines how the widget behaves

//major design systems - material design - google , cupertino design - apple
// material app(root) -> scaffold -> center

//BuildContext- refers to location of the widget in the tree
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Mypage(),
    );
  }
}
//modes - debug , release , profile