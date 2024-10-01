import 'package:cloneflut/features/activity/Home/widget/primary_header.dart';
import 'package:cloneflut/utils/constants/image.strings.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
                child: Column(
                  
                ),
                ),
          ],
        ),
      ),
    );
  }
}
