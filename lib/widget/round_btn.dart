import 'package:flutter/material.dart';

enum RoundButtonType { bgPrimary, textPrimary }

class RoundButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final RoundButtonType type;
  const RoundButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.type = RoundButtonType.bgPrimary});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 56,
        width: 170,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: type == RoundButtonType.bgPrimary
                ? null
                : Border.all(color: Color(0xFFaf0909), width: 1),
            color: type == RoundButtonType.bgPrimary
                ? Color(0xFFaf0909)
                : Color(0xFFaf0909),
            borderRadius: BorderRadius.circular(18)),
        child: Text(
          title,
          style: TextStyle(
              color: type == RoundButtonType.bgPrimary
                  ? Colors.white
                  : Color(0xFFaf0909),
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
