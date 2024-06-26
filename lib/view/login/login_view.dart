import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oomphu/controller/login_controller.dart';
import 'package:oomphu/utils/assets/image_assets.dart';
import 'package:oomphu/view/home/home_screen.dart';
import 'package:svg_flutter/svg.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final loginController = Get.find<LoginController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFF8F8FC),
            Color(0xFFE1E2E8),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 1.0],
        ),
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Form(
          key: loginController.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 25),
              Image.asset(ImageAssets.loginImage),
              const SizedBox(height: 26),
              const Text(
                "Members Only",
                style: TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Image.asset(ImageAssets.socialMedia),
              const SizedBox(height: 28),
              Container(
                height: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFE5E6EC),
                      Color(0xFFF2F3F6),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.0, 1.0],
                  ),
                ),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.length < 3) {
                      return "Email is Required";
                    }
                    return null;
                  },
                  controller: loginController.emailController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 7),
                    hintStyle: const TextStyle(color: Colors.grey),
                    prefixIcon: const Icon(Icons.mail),
                    prefixIconColor: Colors.black.withOpacity(0.4),
                    hintText: "Email/Username",
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFE5E6EC),
                      Color(0xFFF2F3F6),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.0, 1.0],
                  ),
                ),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.length < 3) {
                      return "Password is Required";
                    }
                    return null;
                  },
                  controller: loginController.passwordController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 7),
                    hintStyle: const TextStyle(color: Colors.grey),
                    prefixIcon: const Icon(Icons.lock),
                    prefixIconColor: Colors.black.withOpacity(0.4),
                    hintText: "Password",
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 52),
              GestureDetector(
                onTap: () async {
                  if (!(loginController.formKey.currentState?.validate() ??
                      false)) {
                    log("failed");
                    return;
                  }
                  final result = await loginController.login();
                  if (result) {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                        (route) => false);
                  } else {
                    var snackBar = SnackBar(
                        content:
                            Text(loginController.errorMessage.value ?? ""));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFFE1D02),
                        Color(0xFF004CFF),
                        Color(0xFF19A41A),
                        Color(0xFFFFFB00),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: const EdgeInsets.all(
                      3), // Adjust the padding to fit the border size
                  child: Container(
                    width: double.infinity,
                    height: 48,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.white,
                          offset:
                              Offset(-3, -3), // Shadow for left and top sides
                          blurRadius: 6,
                          spreadRadius: 2,
                        ),
                      ],
                      color: Colors
                          .white, // Background color of the inner container
                      borderRadius: BorderRadius.circular(
                          25), // Slightly smaller radius to show the border
                    ),
                    child: const Center(
                        child: Text(
                      "Login",
                      style: TextStyle(fontSize: 18, color: Color(0xFF666666)),
                    )),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Forgot your password?",
                style: TextStyle(
                  color: Color(0xFF666666),
                ),
              ),
              const SizedBox(height: 35),
              const Row(
                children: [
                  Expanded(
                    child: Divider(thickness: 2),
                  ),
                  SizedBox(width: 2),
                  Text(
                    "Or",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF666666),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 2),
                  Expanded(child: Divider(thickness: 2))
                ],
              ),
              const SizedBox(height: 40),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFE5E6EC),
                      Color(0xFFF2F3F6),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.0, 1.0],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: const Offset(4, 4),
                      blurRadius: 10,
                      spreadRadius: 0,
                    ),
                    const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4, -4),
                      blurRadius: 10,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Want to apply for an account?",
                      style: TextStyle(
                        color: Color(0xFF666666),
                      ),
                    ),
                    Text(
                      " Continue",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF666666),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    ));
  }
}
