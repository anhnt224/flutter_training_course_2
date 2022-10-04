import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: ElevatedButton(
          child: Text('Pop to screen 1'),
          onPressed: () {
            Navigator.of(context).popUntil((route) => false);
          },
        ),
      ),
    );
  }
}
