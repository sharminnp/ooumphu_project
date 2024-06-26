import 'package:flutter/material.dart';

class GrandientContainer extends StatelessWidget {
  const GrandientContainer({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(3, -3),
            blurRadius: 13,
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(-3, -3),
            blurRadius: 13,
            spreadRadius: 0,
          ),
        ],
        gradient: const LinearGradient(
          colors: [
            Color(0xFFF8F8FC),
            Color(0xFFE1E2E8),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 1.0],
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: child,
    );
  }
}