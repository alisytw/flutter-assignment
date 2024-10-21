import 'package:flutter/material.dart';
import '/pages/stories_page.dart';

class CircularStoryAvatarWidget extends StatelessWidget {
  final int index;
  const CircularStoryAvatarWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      'imgs/profile/1f0c7899ede01bde2691e4f39820ceda.png',
      'imgs/profile/03d9115f3e1cd6f3e08d8f28d6590c89.png',
      'imgs/profile/5bba15573842e86bf97a282d7bae2ef3.png',
      'imgs/profile/27bb60acdac882d7eea9be49c4e8a04b.png',
      'imgs/profile/88cfd185457f0c226ed85b66b81405fb.png',
      'imgs/profile/526adc1f4be3493ed63104129a829eca.png',
      'imgs/profile/a18fd1db1b79db5a547f7d1a51ca6aa1.png',
    ];

    final String imagePath = imagePaths[index % imagePaths.length];

    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const StoriesPage(),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        width: 64,
        height: 64,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
