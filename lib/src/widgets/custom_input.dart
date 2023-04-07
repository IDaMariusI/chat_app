import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final bool isPassword;
  final IconData icon;
  final String hintText;
  final TextEditingController textController;
  final TextInputType keyboardType;

  const CustomInput({
    super.key,
    required this.icon,
    required this.textController,
    required this.hintText,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 5,
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(0, 5),
          )
        ],
      ),
      padding: const EdgeInsets.only(
        bottom: 5,
        left: 5,
        top: 5,
        right: 50,
      ),
      child: TextField(
        autocorrect: false,
        controller: textController,
        keyboardType: keyboardType,
        obscureText: isPassword,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hintText,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
