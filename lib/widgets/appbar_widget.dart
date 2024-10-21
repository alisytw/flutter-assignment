import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(29, 39, 50, 1),
      leading: Image.asset('icons/bell.png', scale: 2),
      centerTitle: true,
      title: const Text(
        'SOCIALLY',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
