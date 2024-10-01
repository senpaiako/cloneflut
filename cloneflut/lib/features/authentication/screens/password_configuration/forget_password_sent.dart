import 'package:cloneflut/features/authentication/screens/login/login.dart';
import 'package:cloneflut/utils/constants/image.strings.dart';
import 'package:cloneflut/utils/constants/sizes.dart';
import 'package:cloneflut/utils/constants/text_strings.dart';
import 'package:cloneflut/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordSent extends StatelessWidget {
  const ForgetPasswordSent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(), icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            Image(
                width: THelperFunctions.screenWidth() * 0.8,
                height: THelperFunctions.screenHeight() * 0.3,
                image: AssetImage(TImages.vadeLogoName)),
            Text(TTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(TTexts.changeYourPasswordSubtitle,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center),
            const SizedBox(height: TSizes.spaceBtwItems * 2),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => LoginScreen()),
                  child: const Text('Done')),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                  onPressed: () {}, child: const Text('Resend Email')),
            )
          ],
        ),
      ),
    );
  }
}
