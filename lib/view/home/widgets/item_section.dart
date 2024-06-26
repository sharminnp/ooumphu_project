
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oomphu/controller/home_controller.dart';
import 'package:oomphu/utils/assets/image_assets.dart';

class ItemSection extends StatelessWidget {
  ItemSection({
    super.key,
  });

  final homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        4,
        (index) => Obx(
          () => ItemWidget(
            index: index,
            isSelected: homeController.selectedIndex.value == index,
            onTap: () => homeController.onItemChanged(index),
          ),
        ),
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.index,
    required this.isSelected,
    required this.onTap,
  });

  final int index;
  final bool isSelected;
  final VoidCallback onTap;

  static final List<String> _icons = [
    ImageAssets.peopleGrey,
    ImageAssets.contentGrey,
    ImageAssets.communityGrey,
    ImageAssets.shopGrey,
  ];
  static final List<String> _iconsSelected = [
    ImageAssets.people,
    ImageAssets.content,
    ImageAssets.community,
    ImageAssets.shop,
  ];

  static final List<String> _titles = [
    "People",
    "Content",
    "Community",
    "Shop",
  ];

  static final List<Color> _selectedColors = [
    Colors.blue.shade600,
    const Color(0xFFFF0064),
    Colors.green,
    Colors.orange,
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 80,
        height: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
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
              blurRadius: 10,
              spreadRadius: 0,
            ),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-4, -4),
              blurRadius: 10,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              isSelected ? _iconsSelected[index] : _icons[index],
              width: 33,
              height: 24,
            ),
            const SizedBox(height: 5),
            Text(
              _titles[index],
              style: TextStyle(
                fontSize: isSelected ? 12.5 : 11,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                color: isSelected ? _selectedColors[index] : Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}