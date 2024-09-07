import 'dart:ui';

import 'package:bottom_sheet_with_form/widgets/bottom_sheet/create_account_bottom_sheet.dart';
import 'package:bottom_sheet_with_form/widgets/bottom_sheet/login_bottom_Sheet.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_elevated_buttom.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff050522),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                  "https://www.figma.com/design/TaNuwvtNit95P04yaER7t4/Login%2FRegister-Form-(Community)?node-id=7-0&t=ZVd0RCRlcsHeoi6V-4"),
              const Text(
                "Welcome",
                style: TextStyle(
                  color: Color(0xffEF5858),
                  fontSize: 36,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0),
                child: Text(
                  textAlign: TextAlign.center,
                  "Lorem ipsum dolar sit amet, consectetur adpiscing elit,sed do eiusmod",
                  style: TextStyle(
                    color: Color(0xffF4F4F4),
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              CustomElevatedButton(
                bottomSheet: CreateAccountBottomSheet(),
                paddingWidth: 60,
                textColor: const Color(0xff1B1A40),
                backgroundColor: const Color(0xffFFDE69),
                buttonText: 'Create Account',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomElevatedButton(
                bottomSheet: LoginBottomSheet(),
                paddingWidth: 100,
                textColor: const Color(0XFFFFDE69),
                buttonText: 'Login',
                backgroundColor: Colors.transparent,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'All Right Reserved @2021',
                style: TextStyle(color: Color(0xffFFDE69), fontSize: 11),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
