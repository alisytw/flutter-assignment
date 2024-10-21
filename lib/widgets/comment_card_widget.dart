import 'package:flutter/material.dart';

class CommentCardWidget extends StatelessWidget {
  const CommentCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        color: Colors.white,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                                'imgs/profile/88cfd185457f0c226ed85b66b81405fb.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        width: 42,
                        height: 42,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Alex',
                            style: TextStyle(color: Colors.purple.shade800),
                          ),
                          const Text(
                            'Oct 20, 2024, 1:00 pm',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'This post is amazing! I like the view alot!!!',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'icons/heart.png',
                          scale: 2,
                        ),
                        const Text('10'),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
