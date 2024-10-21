import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/comments_page.dart';

class PostInteractionsWidget extends StatelessWidget {
  final String? screen;
  const PostInteractionsWidget({super.key, this.screen = ''});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Image.asset(
                      'icons/heart.png',
                      scale: 2,
                    ),
                  ),
                  const Text('1,320'),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CommentsPage(),
                  )),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Image.asset(
                      'icons/comment.png',
                      scale: 2,
                    ),
                  ),
                  const Text('23'),
                ],
              ),
            ),
          ],
        ),
        (screen == 'lg')
            ? Container()
            : Image.asset(
                'icons/bookmark.png',
                scale: 2,
              )
      ],
    );
  }
}
