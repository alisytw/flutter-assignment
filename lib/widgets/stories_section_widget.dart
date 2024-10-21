import 'package:flutter/material.dart';
import '/widgets/circular_story_avatar_widget.dart';

class StoriesSectionWidget extends StatelessWidget {
  const StoriesSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 8,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(99),
        ),
        color: Color.fromARGB(255, 36, 51, 69),
      ),
      width: double.infinity,
      height: 64,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return CircularStoryAvatarWidget(
            index: index,
          );
        },
      ),
    );
  }
}
