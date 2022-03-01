import 'package:flutter/material.dart';
import 'package:buscador_gifs/pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: ThemeData(
      hintColor: Colors.white,
      highlightColor: Colors.white,
    ),
  ));
}
