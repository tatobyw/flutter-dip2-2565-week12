import 'package:flutter/material.dart';

import 'home.dart';
import 'package:flutter_week12/stateful.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) :super (key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StateFulPAge(),
    );
  }
}