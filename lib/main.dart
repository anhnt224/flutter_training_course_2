import 'package:flutter/material.dart';
import 'package:flutter_training_course/screens/home_screen.dart';
import 'package:flutter_training_course/widgets/user_image_widget.dart';
import 'dart:developer' as devtools show log;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      themeMode: ThemeMode.dark,
      home: Material(child: HomeScreen()),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _title = "Màu xanh";
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _title,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 16,
          ),
          TrafficLightWidget(
            width: 80,
            height: 160,
            onColorChanged: (color) {
              setState(() {
                if (color == Colors.green) {
                  _title = "Màu xanh";
                } else {
                  _title = "Màu đỏ";
                }
              });
            },
          ),
        ],
      ),
    );
  }
}

// Co 2 mau - do, xanh
class TrafficLightWidget extends StatefulWidget {
  const TrafficLightWidget({
    Key? key,
    required this.height,
    required this.width,
    required this.onColorChanged,
  }) : super(key: key);

  final double height; // pixel
  final double width;
  final ValueChanged<Color> onColorChanged;

  @override
  State<TrafficLightWidget> createState() => _TrafficLightWidgetState();
}

class _TrafficLightWidgetState extends State<TrafficLightWidget> {
  Color currentColor = Colors.red;

  void _onRedLightTap() {
    // notify
    widget.onColorChanged(Colors.red);

    //update UI
    setState(() {
      currentColor = Colors.red;
    });
  }

  void _onGreenLightTap() {
    widget.onColorChanged(Colors.green);
    setState(() {
      currentColor = Colors.green;
    });
  }

  @override
  Widget build(BuildContext context) {
    devtools.log('Rebuild Traffic light');
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: Colors.grey.withAlpha(100),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: _onRedLightTap,
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: currentColor == Colors.red ? Colors.red : Colors.grey,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: _onGreenLightTap,
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color:
                      currentColor == Colors.green ? Colors.green : Colors.grey,
                  shape: BoxShape.circle,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
