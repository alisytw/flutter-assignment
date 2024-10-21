import 'package:flutter/material.dart';
import '/widgets/post_tags_list_widget.dart';
import '/widgets/post_header_widget.dart';
import '/widgets/post_interactions_widget.dart';

class ImagePostWidget extends StatelessWidget {
  final Color? backgroundColor;
  final String? screen;
  const ImagePostWidget(
      {super.key, this.backgroundColor = Colors.white, this.screen = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        color: backgroundColor,
      ),
      width: double.infinity,
      height: 420,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PostHeaderWidget(
              imgPath: 'imgs/profile/03d9115f3e1cd6f3e08d8f28d6590c89.png',
              title: 'Alex Strohl',
              time: '1w ago',
              screen: screen,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                        'imgs/post/1a2ea942da4114f0af70a14429e75594.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                  'This is one of the best experiences I\'ve had in my life! The mountain view is amazing!!!'),
            ),
            PostInteractionsWidget(screen: screen),
            (screen == 'lg')
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      PostTagsListWidget(screen: screen),
                    ],
                  )
                : const PostTagsListWidget(),
          ],
        ),
      ),
    );
  }
}
