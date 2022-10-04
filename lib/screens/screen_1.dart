import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_training_course/screens/screen_2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.green,
      child: Center(
        child: ElevatedButton(
          child: Text('Push to screen 2'),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Screen2()));
          },
        ),
      ),
    );
  }
}
