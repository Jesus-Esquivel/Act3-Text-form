import 'package:flutter/material.dart';
import "package:myapp/form.dart";
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "3.2 Flutter Push Pop",
      theme: ThemeData.light(),
      home: MyForm(),
    );
  }
}