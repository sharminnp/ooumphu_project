import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oomphu/controller/home_controller.dart';
import 'package:oomphu/utils/assets/image_assets.dart';
import 'package:svg_flutter/svg_flutter.dart';

class ItemViewSection extends StatelessWidget {
  final homeController = Get.find<HomeController>();

  ItemViewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => homeController.selectedIndex.value == 1
          ? ContentViewSection()
          : SizedBox(
              // height: 300,
              child: Center(
                child: Text(
                  "Comming Soon...",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ),
    );
  }
}

class ContentViewSection extends StatelessWidget {
  ContentViewSection({super.key});

  final homeController = Get.find<HomeController>();

  static final List<String> _icons = [
    ImageAssets.truthgrey,
    ImageAssets.fungrey,
    ImageAssets.debateGrey,
    ImageAssets.oppertunityGrey,
  ];
  static final List<String> _iconsSelected = [
    ImageAssets.truth,
    ImageAssets.fun,
    ImageAssets.debate,
    ImageAssets.oppertunity,
  ];
  static final List<String> _titles = [
    "Truth",
    "Fun",
    "Debate",
    "Opportunity",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          TabBar(
            isScrollable: false,
            padding: EdgeInsets.zero,
            indicatorPadding: EdgeInsets.zero,
            labelPadding: EdgeInsets.zero,
            indicatorColor: const Color(0xFFFF0064),
            dividerColor: Colors.black.withOpacity(0.5),
            onTap: (value) => homeController.onTabchanged(value),
            tabs: List.generate(
              4,
              (index) => Obx(
                () => _buildTabItem(
                  index,
                  homeController.selectedTabIndex.value == index,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const TabbarViewSection()
        ],
      ),
    );
  }

  Widget _buildTabItem(int index, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            isSelected ? _iconsSelected[index] : _icons[index],
            width: 24,
            height: 22,
          ),
          const SizedBox(width: 5),
          Text(
            _titles[index],
            style: TextStyle(
              fontSize: isSelected ? 11 : 10,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
              color: isSelected
                  ? const Color(0xFFFF0064)
                  : Colors.black.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}

class TabbarViewSection extends StatelessWidget {
  const TabbarViewSection({
    super.key,
  });

  static final List<String> _titles = [
    "Search",
    "Outer Circle",
    "UNIVERSE",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              3,
              (index) => TabItemWidget(
                title: _titles[index],
                index: index,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 120,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 3,
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            itemBuilder: (context, index) {
              return Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(ImageAssets.personImg),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            offset: const Offset(3, 3),
                            blurRadius: 15,
                            spreadRadius: 0,
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            offset: const Offset(-3, -3),
                            blurRadius: 15,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            ImageAssets.leftVibeSvg,
                            height: 10,
                            color: const Color(0xFFFFFFCC),
                          ),
                          const Text(
                            "3.2",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SvgPicture.asset(
                            ImageAssets.rightVibeSvg,
                            height: 10,
                            color: const Color(0xFFFFFFCC),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

class TabItemWidget extends StatelessWidget {
  const TabItemWidget({
    super.key,
    required this.title,
    required this.index,
  });

  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
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
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          index == 0
              ? SvgPicture.asset(ImageAssets.searchSvg)
              : CircleAvatar(
                  radius: 13,
                  backgroundImage: AssetImage(ImageAssets.personImg),
                ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black.withOpacity(0.3),
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
