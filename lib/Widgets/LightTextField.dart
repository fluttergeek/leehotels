import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LightTextField extends StatelessWidget {
  final String label;
  final IconData prefixIcon;
  final bool obscureText;
  final Color fillColor;
  final bool enabled;
  final TextEditingController controller;
  final bool numeric;

  const LightTextField({
    @required this.label,
    @required this.prefixIcon,
    this.obscureText = false,
    this.fillColor,
    this.controller,
    this.enabled = true, this.numeric = false,
  })  : assert(label != null),
        assert(prefixIcon != null);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      elevation: 3.0,
      shadowColor: Colors.grey[100],
      child: TextField(
        keyboardType: numeric ? TextInputType.number : TextInputType.text,
        textAlign: TextAlign.end,
        controller: controller,
        enabled: enabled,
        decoration: InputDecoration(
          filled: true,
          fillColor: enabled == false ? Color(0xffFAAA1E) : fillColor,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 0,
              color: Colors.black.withOpacity(0.12),
            ),
          ),
          disabledBorder: OutlineInputBorder(
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
          hintStyle: enabled == false
              ? TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )
              : TextStyle(
                  color: Color(0xFF2D3243).withOpacity(0.5),
                  fontWeight: FontWeight.w600,
                ),
          prefixIcon: Icon(
            prefixIcon,
            color: enabled == false ? Colors.white : Color(0xff333951),
          ),
        ),
        obscureText: obscureText,
      ),
    );
  }
}
