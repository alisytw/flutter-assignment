import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/post_tag_widget.dart';

class PostTagsListWidget extends StatelessWidget {
  final String? screen;
  const PostTagsListWidget({super.key, this.screen = ''});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Row(
        children: [
          PostTagWidget(text: 'Alberta', screen: screen),
          PostTagWidget(text: 'Gold', screen: screen),
          PostTagWidget(text: 'Meditation', screen: screen),
          Container(
            decoration: BoxDecoration(
                color: (screen == 'lg')
                    ? Colors.grey.shade100
                    : Colors.grey.shade300,
                borderRadius: const BorderRadius.all(Radius.circular(99))),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              child: Text(
                '+3',
                style: TextStyle(
                    color: (screen == 'lg')
                        ? Colors.purple.shade800
                        : Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
