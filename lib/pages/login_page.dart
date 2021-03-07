import 'package:cozy/pages/home_page.dart';
import 'package:cozy/pages/register_page.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widget/button_item.dart';
import 'package:cozy/widget/curvePainter_item.dart';
import 'package:cozy/widget/signform_item.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                logoApp(context),SizedBox(
                  height: 50,
                ),
                Text(
                  'Sign in with your email and password \nor continue using social media',
                  textAlign: TextAlign.center,
                  style: textSubtitleStyle.copyWith(fontSize: 12),
                ),
                SignForm(),
                buttonLogin(context),
                SizedBox(height: 50,)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buttonLogin(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: edge),
        child: Column(
          children: [
            _btnLogin(context),
            Text('or'),
            _btnRegister(context)
          ],
        ),
      ),
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

  Widget _btnLogin(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ButtonItem(
        '/home',
        'Login'
      )
    );
  }

  Widget _btnRegister(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ButtonItemSecondary(
        '/register',
        'Register'
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Form(
        child: Column(
          children: [
            formWidget(
                'Email / Username', 'Enter your email / username', Icons.mail,
                false),
            SizedBox(height: 20,),
            formWidget(
                'Password', 'Enter your correct password', Icons.vpn_key_sharp,
                true),
          ],
        ),
      ),
    );
  }


}
