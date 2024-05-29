import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tapu_tapi_shop/features/authenthication/screens/password_configuration/forget_password.dart';
import 'package:tapu_tapi_shop/features/authenthication/screens/signup/signup.dart';
import 'package:tapu_tapi_shop/features/shop/screens/home/home.dart';
import 'package:tapu_tapi_shop/navigation_menu.dart';
import 'package:tapu_tapi_shop/services/auth_service.dart';
// import 'package:tapu_tapi_shop/utils/constants/colors.dart';
import 'package:tapu_tapi_shop/utils/constants/sizes.dart';
import 'package:tapu_tapi_shop/utils/constants/text_strings.dart';

class TLoginForm extends StatefulWidget {
  const TLoginForm({super.key});

  @override
  State<TLoginForm> createState() => _TLoginFormState();
}

class _TLoginFormState extends State<TLoginForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() async {
    // login logic
    final _authService = AuthService();
    try {
      await _authService.singInWithEmailPassword(
          emailController.text, passwordController.text);
      Get.to(() => const NavigationMenu());
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: TTexts.email),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffix: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: login,
                child: const Text(TTexts.signIn),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()),
                child: const Text(TTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
