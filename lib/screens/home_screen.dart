import 'package:flutter/material.dart';

import '../widgets/user_image_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          color: const Color(0xff14142E),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Activities',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  UserImageWidget(
                    imageLink:
                        "https://m.media-amazon.com/images/I/51ezapIh42L.jpg",
                    onButtonTap: () {
                      print('Click image 1');
                    },
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  UserImageWidget(
                    imageLink:
                        "https://m.media-amazon.com/images/I/51ezapIh42L.jpg",
                    onButtonTap: () {
                      print('Click image 2');
                    },
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  UserImageWidget(
                    imageLink:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH43wilQI2YKLcq0GqZhwrhQBWSnsJaRqCXw&usqp=CAU",
                    onButtonTap: () {
                      print('Click image 3');
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Messages',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
