import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tapu_tapi_shop/common/styles/spacing_styles.dart';
import 'package:tapu_tapi_shop/common/widgets/login_signup/form_divider.dart';
import 'package:tapu_tapi_shop/common/widgets/login_signup/social_buttons.dart';
import 'package:tapu_tapi_shop/features/authenthication/screens/login/widgets/login_header.dart';
import 'package:tapu_tapi_shop/features/authenthication/screens/login/widgets/login_form.dart';
import 'package:tapu_tapi_shop/utils/constants/sizes.dart';
import 'package:tapu_tapi_shop/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const TLoginHeader(),
              const TLoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
