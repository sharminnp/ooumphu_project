import 'package:flutter/material.dart';
import 'package:oomphu/utils/assets/image_assets.dart';
import 'package:svg_flutter/svg.dart';

class AppbarSection extends StatelessWidget {
  const AppbarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 20,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "(0.0 Vibes)",
                    style: TextStyle(
                      fontSize: 8,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  const Text(
                    "4.2",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AttributeWidget(
                  title: "IQ",
                  svgIcon: ImageAssets.iqSvg,
                  value: "3.5",
                ),
                AttributeWidget(
                  title: "Appeal",
                  svgIcon: ImageAssets.apealSvg,
                  value: "4.0",
                ),
                AttributeWidget(
                  title: "Social",
                  svgIcon: ImageAssets.socialSvg,
                  value: "4.2",
                ),
                AttributeWidget(
                  title: "Humanity",
                  svgIcon: ImageAssets.humanitySvg,
                  value: "3.8",
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                "Vibes\nMatch",
                style: TextStyle(
                  fontSize: 8,
                  color: Colors.grey.shade800,
                ),
              ),
              const Text(
                "70%",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AttributeWidget extends StatelessWidget {
  const AttributeWidget({
    super.key,
    required this.title,
    required this.value,
    required this.svgIcon,
  });
  final String title;
  final String value;
  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 10,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 2),
        Stack(
          children: [
            SvgPicture.asset(svgIcon),
            Positioned(
              bottom: 0,
              left: 11,
              child: Text(
                value,
                style: const TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}