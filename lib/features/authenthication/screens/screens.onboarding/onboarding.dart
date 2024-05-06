import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tapu_tapi_shop/features/authenthication/screens/screens.onboarding/widget/onboarding.page.dart';
import 'package:tapu_tapi_shop/features/authenthication/screens/screens.onboarding/widget/onboarding_dot_navigation.dart';
import 'package:tapu_tapi_shop/features/authenthication/screens/screens.onboarding/widget/onboarding_next_button.dart';
import 'package:tapu_tapi_shop/features/authenthication/screens/screens.onboarding/widget/onboarding_skip.dart';
import 'package:tapu_tapi_shop/utils/constants/image_strings.dart';
import 'package:tapu_tapi_shop/utils/constants/text_strings.dart';
import '../../controllers.onboarding/onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.flutterAppLogo2,
                title: TTexts.onBoardingSubTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.flutterAppLogo2,
                title: TTexts.onBoardingSubTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.flutterAppLogo2,
                title: TTexts.onBoardingSubTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingNavigation(),
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}