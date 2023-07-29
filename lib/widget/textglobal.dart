import 'package:flutter/material.dart';
import 'package:modernlogintute/components/my_textfield.dart';

class textglobal extends StatelessWidget {
   textglobal({
    super.key,
    required this.passwordController,
    required this.hint,
    required this.obs,
  });
  String hint;
  bool obs;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return MyTextField(
      controller: passwordController,
      hintText: hint,
      obscureText: obs,
    );
  }
}