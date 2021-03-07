import 'package:cozy/pages/home_page.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class ButtonItem extends StatelessWidget {
  final String route;
  final String textButton;

  ButtonItem(this.route, this.textButton);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
            primary: purpleColor),
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        child: Text(
          textButton,
          style: textWhiteStyle.copyWith(fontSize: 18),
        ),
      ),
    );
  }
}

class ButtonItemSecondary extends StatelessWidget {
  final String route;
  final String textButton;

  ButtonItemSecondary(this.route, this.textButton);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: whiteColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
            side: BorderSide(color: purpleColor, width: 2)),
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        child: Text(
          textButton,
          style: textPurpleStyle.copyWith(fontSize: 18),
        ),
      ),
    );
  }
}
