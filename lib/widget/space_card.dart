import 'package:cozy/model/space.dart';
import 'package:cozy/pages/detail_page.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class SpaceCard extends StatelessWidget {
  final Space space;

  SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailPage(space)));
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 110,
              width: 130,
              child: Stack(
                children: [
                  Image.network(
                    space.imageUrlSpace,
                    width: 130,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                          color: purpleColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/icon_star.png',
                            width: 20,
                            height: 20,
                          ),
                          Text(
                            '${space.rating}/5',
                            style: textWhiteStyle.copyWith(fontSize: 10),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                space.nameSpace,
                style: textTitleStyle.copyWith(fontSize: 18),
              ),
              Text.rich(TextSpan(
                  text: '\$${space.price}',
                  style: textPurpleStyle.copyWith(fontSize: 16),
                  children: [
                    TextSpan(
                        text: ' / month',
                        style: textSubtitleStyle.copyWith(fontSize: 18))
                  ])),
              SizedBox(
                height: 16,
              ),
              Text(
                '${space.city} ${space.country}',
                style: textSubtitleStyle.copyWith(fontSize: 14),
              )
            ],
          )
        ],
      ),
    );
  }
}
