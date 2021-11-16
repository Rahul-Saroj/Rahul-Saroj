import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'constFile/text_style.dart';
import 'global_widget/custom_lift_widget.dart';

class LiftHistory extends StatelessWidget {
  const LiftHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lift History',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget> [
          Expanded(child: CustomLift( title : 'Ji Tirto Utomo No 41' , isLift : true)),
        ],
      ),
    );
  }
}
