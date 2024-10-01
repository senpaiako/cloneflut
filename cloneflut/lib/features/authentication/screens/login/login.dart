import 'package:cloneflut/common/styles/spacing_styles.dart';
import 'package:cloneflut/features/authentication/screens/login/widgets/login_header.dart';
import 'package:cloneflut/features/authentication/screens/login/widgets/login_form.dart';
import 'package:cloneflut/utils/constants/colors.dart';
import 'package:cloneflut/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Login Header
              TLoginHeader(dark, context),
              //Login FORM
              TLoginForm(),
              //Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(
                    color: dark ? TColors.darkGrey : TColors.grey,
                    thickness: 0.5,
                    indent: 60,
                    endIndent: 5,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
