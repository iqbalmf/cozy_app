import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final int countItem;

  FacilityItem({
    this.name, this.imageUrl, this.countItem
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(TextSpan(
            text: '$countItem',
            style: textPurpleStyle.copyWith(fontSize: 14),
            children: [
              TextSpan(
                  text: ' $name',
                  style: textSubtitleStyle.copyWith(fontSize: 14))
            ]))
      ],
    );
  }
}
