import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tapu_tapi_shop/features/authenthication/screens/login/login.dart';
import 'package:tapu_tapi_shop/features/authenthication/screens/signup/verify_email.dart';
import 'package:tapu_tapi_shop/features/authenthication/screens/signup/widgets/terms_condition_checkbox.dart';
import 'package:tapu_tapi_shop/services/auth_service.dart';
import 'package:tapu_tapi_shop/utils/constants/sizes.dart';
import 'package:tapu_tapi_shop/utils/constants/text_strings.dart';

class TSignupForm extends StatefulWidget {
  const TSignupForm({super.key});

  @override
  State<TSignupForm> createState() => _TSignupFormState();
}

class _TSignupFormState extends State<TSignupForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  void register() async {
    final _authService = AuthService();

    if (passwordController.text == confirmPasswordController.text) {
      try {
        await _authService.singUpWithEmailPassword(
            emailController.text, passwordController.text);
        Get.to(() => const LoginScreen());
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    } else {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text("Passwords do not match"),
        ),
      );
    }
  }

// class _TSignupFormState extends State<TSignupForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // TextFormField(
          //   expands: false,
          //   decoration: const InputDecoration(
          //       labelText: TTexts.username,
          //       prefixIcon: Icon(Iconsax.user_edit)),
          // ),
          // const SizedBox(height: TSizes.spaceBtwInputFields),
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
                labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          // TextFormField(
          //   decoration: const InputDecoration(
          //       labelText: TTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
          // ),
          // const SizedBox(height: TSizes.spaceBtwInputFields),
          TextFormField(
            obscureText: true,
            controller: passwordController,
            decoration: const InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          TextFormField(
            obscureText: true,
            controller: confirmPasswordController,
            decoration: const InputDecoration(
                labelText: "Confirm Password",
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(height: TSizes.spaceBtwSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: register,
              // onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(TTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
