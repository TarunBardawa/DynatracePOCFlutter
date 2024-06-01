import 'package:flutter/material.dart';
import 'package:dynatrace_sample_app/screens/home/home.dart';

import 'package:dynatrace_flutter_plugin/dynatrace_flutter_plugin.dart';

void main() {
  Dynatrace().start(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}