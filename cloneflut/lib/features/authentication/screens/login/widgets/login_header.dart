import 'package:cloneflut/utils/constants/image.strings.dart';
import 'package:cloneflut/utils/constants/sizes.dart';
import 'package:cloneflut/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

Column TLoginHeader(bool dark, BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image(
          width: 100,
          height: 100,
          image:
              AssetImage(dark ? TImages.vadeLogoWhite : TImages.vadeLogoBlack)),
      Text(TTexts.LoginTitle1,
          style: Theme.of(context).textTheme.headlineMedium),
      const SizedBox(height: TSizes.sm),
      Text(TTexts.LogingSubTitle1,
          style: Theme.of(context).textTheme.bodyMedium),
    ],
  );
}
