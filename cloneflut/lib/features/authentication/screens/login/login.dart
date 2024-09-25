import 'package:cloneflut/common/styles/spacing_styles.dart';
import 'package:cloneflut/utils/constants/colors.dart';
import 'package:cloneflut/utils/constants/image.strings.dart';
import 'package:cloneflut/utils/constants/sizes.dart';
import 'package:cloneflut/utils/constants/text_strings.dart';
import 'package:cloneflut/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
              ///Logo, Title, Subtitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                      width: 100,
                      height: 100,
                      image: AssetImage(dark
                          ? TImages.vadeLogoWhite
                          : TImages.vadeLogoBlack)),
                  Text(TTexts.LoginTitle1,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: TSizes.sm),
                  Text(TTexts.LogingSubTitle1,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: TSizes.spaceBtwSections),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.direct_right),
                            labelText: TTexts.email),
                      ),
                      const SizedBox(height: TSizes.sm),
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.password_check),
                            labelText: TTexts.password,
                            suffixIcon: Icon(Iconsax.eye_slash)),
                      ),
                      const SizedBox(height: TSizes.sm),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //remember Me
                          Checkbox(value: true, onChanged: (value) {}),
                          const Text(TTexts.rememberMe),
                          //Forget password
                          TextButton(
                              onPressed: () {},
                              child: const Text(TTexts.forgetPassword)),
                        ],
                      ),

                      const SizedBox(height: TSizes.sm),

                      //sign in button
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(TTexts.signIn))),
                      //Create Account button
                      const SizedBox(height: TSizes.spaceBtwItems),
                      SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: const Text(TTexts.createAccount))),
                      const SizedBox(height: TSizes.sm),
                    ],
                  ),
                ),
              ),
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
