import 'package:flutter/material.dart';

class PostTagWidget extends StatelessWidget {
  final String text;
  final String? screen;
  const PostTagWidget({super.key, required this.text, this.screen = ''});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        decoration: BoxDecoration(
            color:
                (screen == 'lg') ? Colors.grey.shade100 : Colors.grey.shade300,
            borderRadius: const BorderRadius.all(Radius.circular(99))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          child: Row(
            children: [
              Image.asset(
                (screen == 'lg') ? 'icons/tag_purple.png' : 'icons/tag.png',
                scale: 2,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                text,
                style: TextStyle(
                    color: (screen == 'lg')
                        ? Colors.purple.shade800
                        : Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
