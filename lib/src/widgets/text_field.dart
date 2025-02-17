import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;

  const CustomTextField({
    super.key,
    this.label = "",
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 400,
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: label,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2.0),
          ),
          prefixIcon: Icon(
            prefixIcon,
            color: Color(0xFF010d4e),
          ),
          suffixIcon: Icon(
            suffixIcon,
            color: Color(0xFF010d4e),
          ),
        ),
      ),
    );
  }
}
