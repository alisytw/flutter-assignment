import 'package:flutter/material.dart';

bool navBarExpanded = false;

class NavBarVerticalWidget extends StatefulWidget {
  const NavBarVerticalWidget({super.key});

  @override
  State<NavBarVerticalWidget> createState() => _NavBarVerticalWidgetState();
}

class _NavBarVerticalWidgetState extends State<NavBarVerticalWidget> {
  @override
  Widget build(BuildContext context) {
    if (navBarExpanded) {
      return GestureDetector(
        onTap: () => setState(() {
          navBarExpanded = !navBarExpanded;
        }),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Text(
                  'SOCIALLY',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'icons/home.png',
                          scale: 2,
                        ),
                        const SizedBox(
                          height: 48,
                        ),
                        Image.asset(
                          'icons/explore.png',
                          color: Colors.grey,
                          scale: 2,
                        ),
                        const SizedBox(
                          height: 48,
                        ),
                        Image.asset(
                          'icons/person.png',
                          color: Colors.grey,
                          scale: 2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Column(
                      children: [
                        Text('Home'),
                        SizedBox(
                          height: 56,
                        ),
                        Text('Explore'),
                        SizedBox(
                          height: 56,
                        ),
                        Text('Account'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return GestureDetector(
        onTap: () => setState(() {
          navBarExpanded = !navBarExpanded;
        }),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.asset(
                  'icons/home.png',
                  scale: 2,
                ),
                const SizedBox(
                  height: 48,
                ),
                Image.asset(
                  'icons/explore.png',
                  color: Colors.grey,
                  scale: 2,
                ),
                const SizedBox(
                  height: 48,
                ),
                Image.asset(
                  'icons/person.png',
                  color: Colors.grey,
                  scale: 2,
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
