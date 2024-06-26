// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:oomphu/view/home/widgets/bio_section.dart';
import 'package:oomphu/view/home/widgets/gradient_container.dart';
import 'package:oomphu/view/home/widgets/item_section.dart';
import 'package:oomphu/view/home/widgets/item_view_section.dart';
import 'package:oomphu/view/home/widgets/post_details.dart';

class BodySection extends StatelessWidget {
  const BodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GrandientContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BioSection(),
                  Padding(
                    padding: EdgeInsets.only(left: 115),
                    child: PostDetails(),
                  ),
                ],
              ),
            ),
            ItemSection(),
            SizedBox(height: 20),
            ItemViewSection(),
          ],
        ),
      ),
    );
  }
}
