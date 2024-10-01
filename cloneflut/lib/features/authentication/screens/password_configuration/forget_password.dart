import 'package:cloneflut/features/authentication/screens/password_configuration/forget_password_sent.dart';
import 'package:cloneflut/utils/constants/sizes.dart';
import 'package:cloneflut/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //headings
              Text(TTexts.forgetPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(TTexts.forgetPasswordSubtitle,
                  style: Theme.of(context).textTheme.labelMedium),
              const SizedBox(height: TSizes.spaceBtwSections * 2),

              //Text field
              TextFormField(
                decoration: const InputDecoration(
                    labelText: TTexts.email,
                    prefixIcon: Icon(Iconsax.direct_right)),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              //submit button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const ForgetPasswordSent()),
                    child: const Text('Submit')),
              )
            ],
          ),
        ));
  }
}
