import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/getx_hiaight_weaight.dart';
class FirstPage1 extends StatefulWidget {
 // var name;
 final String name;
    FirstPage1({super.key, required this.name});

  @override
  State<FirstPage1> createState() => _FirstPage1State();
}

class _FirstPage1State extends State<FirstPage1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("Screen one  "+widget.name),

ElevatedButton(onPressed: () {

}, child: Text("FirstPage2"))
          ],
        ),
      ),
    );
  }
}
