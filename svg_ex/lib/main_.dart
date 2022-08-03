import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class show_sxg extends StatelessWidget {

  String part;
  show_sxg( { required this.part });

  Future<String> getOfficeStructure() async {
    var byteData = rootBundle.loadString('assets/strong.svg');
    return byteData;
  }

  Future<String> changeColor(String element) async {
    String svg = await getOfficeStructure();
    int? startIndex = svg.indexOf('path$element');
    svg = svg.substring(0, startIndex) + svg.substring(startIndex).replaceFirst('#000000', '#d45500');
    return svg;
  }

  @override
  Widget build(BuildContext context) {

    Future<String> svg = changeColor(this.part);

    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: 400,
          width: 400,
          child: Center(
          child:
              FutureBuilder(
                future: svg,
                builder: (
                    BuildContext context,
                    AsyncSnapshot<String> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                        child: CircularProgressIndicator());
                  } else {
                    return SvgPicture.string(snapshot.data!);
                  }
                })
              )
          ),
        ),
      );
  }
}

