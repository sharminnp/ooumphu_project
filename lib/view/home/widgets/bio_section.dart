
import 'package:flutter/material.dart';
import 'package:oomphu/view/home/widgets/custom_button.dart';
import 'package:oomphu/view/home/widgets/profile_image.dart';

class BioSection extends StatelessWidget {
  const BioSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 115,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileImage(),
              const SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildWorkInfo(icon: Icons.work, title: "CEO,Ooumph"),
                  _buildWorkInfo(icon: Icons.home, title: "Lucknow,India"),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Charlotte Nolan",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "@charlottenolan880",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const CustomButton(),
                ],
              ),
              const SizedBox(height: 21),
              Text(
                "Things may come to those who wait, but only the things left by those who hustle. Things may come to those who wait.",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black.withOpacity(0.8),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row _buildWorkInfo({
    required IconData icon,
    required String title,
  }) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.black.withOpacity(0.8),
          size: 16,
        ),
        const SizedBox(width: 8),
        Text(
          title,
          style: TextStyle(
            fontSize: 10,
            color: Colors.grey.shade800,
          ),
        ),
      ],
    );
  }
}