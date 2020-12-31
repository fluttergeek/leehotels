import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LightTextField extends StatelessWidget {
  final String label;
  final IconData prefixIcon;
  final bool obscureText;
  final Color fillColor;

  const LightTextField({
    @required this.label,
    @required this.prefixIcon,
    this.obscureText = false,
    this.fillColor,
  })  : assert(label != null),
        assert(prefixIcon != null);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3.0,
      shadowColor: Colors.grey,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: fillColor,
          contentPadding: const EdgeInsets.all(16.0),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 0,
              color: Colors.black.withOpacity(0.12),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 0,
              color: Colors.black.withOpacity(0.12),
            ),
          ),
          hintText: label,
          hintStyle: TextStyle(
            color: Color(0xFF2D3243).withOpacity(0.5),
            fontWeight: FontWeight.w500,
          ),
          prefixIcon: Icon(
            prefixIcon,
            color: Color(0xff333951),
          ),
        ),
        obscureText: obscureText,
      ),
    );
  }
}
