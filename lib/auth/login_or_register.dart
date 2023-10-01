
import 'package:awashderash/auth/login_page.dart';
import 'package:awashderash/auth/register_email.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLoginPage=false;
  void togglePage(){
    setState(() {
      showLoginPage=!showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    return showLoginPage?LoginPage(onTap:togglePage):RegisterEmail(onTap: togglePage,);
  }
}
