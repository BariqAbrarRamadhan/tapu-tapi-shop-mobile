import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tapu_tapi_shop/common/widgets/login_signup/form_divider.dart';
import 'package:tapu_tapi_shop/common/widgets/login_signup/social_buttons.dart';
// import 'package:tapu_tapi_shop/features/authenthication/screens/signup/widgets/terms_condition_checkbox.dart';
import 'package:tapu_tapi_shop/features/authenthication/screens/signup/widgets/signup_form.dart';
import 'package:tapu_tapi_shop/utils/constants/sizes.dart';
import 'package:tapu_tapi_shop/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              const TSignupForm(),
              const SizedBox(height: TSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}
