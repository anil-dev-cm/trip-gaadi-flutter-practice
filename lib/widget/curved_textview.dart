import 'package:flutter/material.dart';

class CurvedTextView extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Color? bgColor;
  final Widget? left;

  const CurvedTextView(
      {super.key,
      required this.hintText,
      this.controller,
      this.keyboardType,
      this.bgColor,
      this.left,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(children: [
        if (left != null)
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
            ),
            child: left!,
          ),
        Expanded(
          child: TextField(
            autocorrect: false,
            controller: controller,
            obscureText: obscureText,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(
                  color: Color(0xFF747370),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ]),
    );
  }
}
