import 'package:flutter/material.dart';
import 'package:lotel/constants.dart';

class LoadingEditor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        color: editorBackground,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.28,
        child: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(
              purple,
            ),
          ),
        ),
      ),
    );
  }
}
