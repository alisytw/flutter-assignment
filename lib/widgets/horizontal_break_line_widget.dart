import 'package:flutter/material.dart';

class HorizontalBreakLineWidget extends StatelessWidget {
  const HorizontalBreakLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        color: Colors.black,
        width: double.infinity,
        height: 1,
      ),
    );
  }
}
