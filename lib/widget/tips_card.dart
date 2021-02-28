import 'package:cozy/model/tips.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;
  TipsCard(this.tips);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips.imageUrl,
          width: 80,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: textTitleStyle.copyWith(fontSize: 18),
            ),
            Text(
              'Updated ${tips.updatedAt}',
              style: textSubtitleStyle.copyWith(fontSize: 14),
            )
          ],
        ),
        Spacer(),
        IconButton(icon: Icon(Icons.chevron_right, color: greyColor,), onPressed: () {})
      ],
    );
  }
}
