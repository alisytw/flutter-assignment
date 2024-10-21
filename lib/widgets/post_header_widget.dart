import 'package:flutter/material.dart';

class PostHeaderWidget extends StatelessWidget {
  final String imgPath, title, time;
  final String? screen;
  const PostHeaderWidget(
      {super.key,
      required this.imgPath,
      required this.title,
      required this.time,
      this.screen = ''});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      imgPath,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(
              title,
            )
          ],
        ),
        (screen == 'lg')
            ? Row(
                children: [
                  Text(time),
                  const SizedBox(
                    width: 8,
                  ),
                  Image.asset(
                    'icons/bookmark.png',
                    scale: 2,
                  ),
                ],
              )
            : Text(
                time,
              )
      ],
    );
  }
}
