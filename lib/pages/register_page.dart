import 'package:cozy/theme.dart';
import 'package:cozy/widget/button_item.dart';
import 'package:cozy/widget/signform_item.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  logoApp(context),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'REGISTER',
                    style: textTitleStyle.copyWith(fontSize: 24),
                  ),
                  Text(
                    'Complete your detail or continue \nwith social media',
                    textAlign: TextAlign.center,
                    style: textSubtitleStyle.copyWith(fontSize: 12),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  formWidget('Email', 'Enter your email', Icons.email, false),
                  SizedBox(
                    height: 20,
                  ),
                  formWidget('Password', 'Enter your password',
                      Icons.vpn_key_sharp, true),
                  SizedBox(
                    height: 20,
                  ),
                  formWidget('Confirm password', 'Re-enter your password',
                      Icons.vpn_key_sharp, true),
                  SizedBox(height: 20,),
                  _btnRegister(context)
                ],
              ),
            ),
          )),
    );
  }

  Widget logoApp(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              'COZY',
              style: textTitleStyle.copyWith(fontSize: edge),
            ),
          )
        ],
      ),
    );
  }

  Widget _btnRegister(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: ButtonItem(
            '/home',
            'Sign Up'
        )
    );
  }
}
