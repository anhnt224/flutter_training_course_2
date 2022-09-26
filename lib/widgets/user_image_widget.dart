import 'package:flutter/material.dart';

class UserImageWidget extends StatelessWidget {
  UserImageWidget(
      {Key? key, required this.imageLink, this.name, required this.onButtonTap})
      : super(key: key);

  final String imageLink;
  final String? name;
  Function onButtonTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onButtonTap(),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.green,
                width: 4,
              ),
            ),
            clipBehavior: Clip.hardEdge,
            child: ClipOval(
              child: Image.network(
                imageLink,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text('asdsaas'),
        ],
      ),
    );
  }
}
