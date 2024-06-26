import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          colors: [
            Color(0xFFE5E6EC),
            Color(0xFFF2F3F6),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 1.0],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(4, 4),
            blurRadius: 12,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Text(
        "Edit Profile",
        style: TextStyle(
          color: Colors.blue.shade600,
          fontWeight: FontWeight.w500,
          fontSize: 12,
        ),
      ),
    );
  }
}