import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

TextFormField formWidget(
    String label, String hint, IconData iconData, bool hideText) {
  return TextFormField(
    obscureText: hideText,
    decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: greyColor),
            gapPadding: 10),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: greyColor),
            gapPadding: 10),
        suffixIcon: Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
          child: Icon(iconData),
        )),
  );
}
