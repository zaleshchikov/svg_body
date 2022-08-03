import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main_.dart';
import 'package:svg_ex/stateful_wid.dart';

void main() async {

  runApp(
      MaterialApp(
        home: Scaffold(
          body: svg_screen(),
        ),
      )
  );
}

