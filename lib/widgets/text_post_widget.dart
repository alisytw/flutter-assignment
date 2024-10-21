import 'package:flutter/material.dart';
import '/widgets/horizontal_break_line_widget.dart';
import '/widgets/post_header_widget.dart';
import '/widgets/post_interactions_widget.dart';

class TextPostWidget extends StatelessWidget {
  final Color? backgroundColor;
  final String? screen;
  const TextPostWidget(
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
        height: 172,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PostHeaderWidget(
                imgPath: 'imgs/profile/27bb60acdac882d7eea9be49c4e8a04b.png',
                title: 'Kylie Jenner .With Zoe Sugg',
                time: '2d ago',
                screen: screen,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Stopped by ',
                      ),
                      TextSpan(
                        text: '@zoesugg',
                        style: TextStyle(
                            color: (screen == 'lg')
                                ? Colors.orange
                                : Colors.purple.shade800),
                      ),
                      const TextSpan(
                        text: ' today with goosey girl to see ',
                      ),
                      TextSpan(
                        text: '@kyliecosmetics',
                        style: TextStyle(
                            color: (screen == 'lg')
                                ? Colors.orange
                                : Colors.purple.shade800),
                      ),
                      const TextSpan(
                        text: ' & ',
                      ),
                      TextSpan(
                        text: '@kylieskin',
                        style: TextStyle(
                            color: (screen == 'lg')
                                ? Colors.orange
                                : Colors.purple.shade800),
                      ),
                      const TextSpan(
                        text:
                            ' 💕 wow what a dream!!!!!!!! \nIt’s the best experience we have!',
                      ),
                    ],
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                ),
              ),
              const HorizontalBreakLineWidget(),
              PostInteractionsWidget(
                screen: screen,
              ),
            ],
          ),
        ));
  }
}
