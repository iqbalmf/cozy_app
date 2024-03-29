import 'package:cozy/model/city.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final City city;

  CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: greybgColor,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city.imageUrl ?? "",
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                city.isPopular?? false ? Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(36))),
                    child: Center(
                        child: Image.asset('assets/images/icon_star.png',
                        width: 22,
                        height: 22,)),
                  ),
                ) : Container()
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              city.nameCity ?? "",
              style: textTitleStyle.copyWith(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
