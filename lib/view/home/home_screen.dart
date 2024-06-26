// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:oomphu/view/home/widgets/appbar_section.dart';
import 'package:oomphu/view/home/widgets/body_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFF8F8FC),
              Color(0xFFE1E2E8),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [0.0, 1.0],
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              AppbarSection(),
              SizedBox(height: 9),
              BodySection(),
            ],
          ),
        ),
      ),
    );
  }
}
