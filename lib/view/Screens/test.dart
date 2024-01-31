import 'package:flutter/material.dart';

import '../../main.dart';

class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    final height = mq.height;
    final width = mq.width;
    return Container(
      height: height,
      width: width,
    );
  }
}
