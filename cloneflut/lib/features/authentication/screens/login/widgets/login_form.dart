import 'package:cloneflut/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:cloneflut/navigation_menu.dart';
import 'package:cloneflut/utils/constants/sizes.dart';
import 'package:cloneflut/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

Form TLoginForm() {
  return Form(
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.login), labelText: TTexts.phoneNo),
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
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(TTexts.rememberMe),
                ],
              ),
              //Forget password
              TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(TTexts.forgetPassword)),
            ],
          ),

          const SizedBox(height: TSizes.sm),

          //sign in button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const NavigationMenu()),
                  child: const Text(TTexts.signIn))),
          //Create Account button
          const SizedBox(height: TSizes.spaceBtwItems),
        ],
      ),
    ),
  );
}
