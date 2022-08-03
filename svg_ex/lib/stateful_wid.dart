import 'package:flutter/material.dart';
import 'main_.dart';

class svg_screen extends StatefulWidget {
  const svg_screen({Key? key}) : super(key: key);

  @override
  State<svg_screen> createState() => _svg_screenState();
}

class _svg_screenState extends State<svg_screen> {

  String el = '114';

  @override
  Widget build(BuildContext context) {

    print(el);

    return Column(
      children: [
        Container(
          height: 400,
    width: 400,
    child: show_sxg(part: el) ),
        ElevatedButton(
            onPressed: (){
              setState(() {
                el = (int.parse(el) + 2).toString();
              });
    },
            child: Text('head'))
      ],
    );
  }
}
