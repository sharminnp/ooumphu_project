import 'package:flutter/material.dart';

class PostDetails extends StatelessWidget {
  const PostDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 50),
            Text(
              "Vibers: 5.2K",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black.withOpacity(0.5),
                fontSize: 10,
              ),
            ),
            const SizedBox(width: 26),
            Text(
              "Posts: 25",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black.withOpacity(0.5),
                fontSize: 10,
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.only(top: 8, left: 24, right: 7, bottom: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70),
            gradient: const LinearGradient(
              colors: [
                Color(0xFFE5E6EC),
                Color(0xFFFFFFFF),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 1.0],
            ),
          ),
          child: Stack(
            children: [
              _buildDataContiner(
                  width: 205,
                  rightPads: 27,
                  data: "2.3k",
                  textColor: Colors.black.withOpacity(0.4),
                  shadowNeeded: true,
                  boxName: "Universe"),
              _buildDataContiner(
                width: 123,
                rightPads: 18,
                data: "2.3k",
                textColor: Colors.black.withOpacity(0.6),
                shadowNeeded: false,
                boxName: "Outer",
              ),
              _buildDataContiner(
                width: 60,
                rightPads: 24,
                data: "15",
                textColor: Colors.black,
                shadowNeeded: false,
                boxName: "Inner",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column _buildDataContiner({
    required double width,
    required double rightPads,
    required String data,
    required Color textColor,
    required bool shadowNeeded,
    required String boxName,
  }) {
    return Column(
      children: [
        Container(
          width: width,
          padding: EdgeInsets.only(
            top: 13,
            right: rightPads,
            bottom: 7,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            gradient: const LinearGradient(
              colors: [
                Color(0xFFE5E6EC),
                Color(0xFFFFFFFF),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 1.0],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: const Offset(4, 4),
                blurRadius: 8,
                spreadRadius: 0,
              ),
              const BoxShadow(
                color: Colors.white,
                offset: Offset(-4, -4),
                blurRadius: 8,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Text(
            data,
            textAlign: TextAlign.right,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ),
        const SizedBox(height: 5),
        SizedBox(
          width: width,
          child: Padding(
            padding: EdgeInsets.only(right: rightPads - 7),
            child: Text(
              boxName,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: textColor,
                fontSize: 12,
              ),
            ),
          ),
        )
      ],
    );
  }
}