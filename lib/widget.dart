import 'package:flutter/material.dart';

Widget circleImage({
  required String imagePath,
  required String text,
}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(imagePath),
        ),
        Text(text),
      ],
    ),
  );
}

Widget menuCard(String title, String assetPath) {
  return Card(
    elevation: 5,
    child: Stack(
      children: [
        Container(
          height: 200,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              color: Color.fromARGB(255, 144, 220, 243),
            ),
            margin: const EdgeInsets.only(top: 120),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
        Positioned(
          bottom: 18,
          left: 15,
          child: Image.asset(
            assetPath,
            height: 120,
            width: 90,
          ),
        )
      ],
    ),
  );
}
