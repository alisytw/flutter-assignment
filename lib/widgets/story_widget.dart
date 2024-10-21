import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  final String? imgPath;
  const StoryWidget(
      {super.key,
      this.imgPath = 'imgs/post/1a2ea942da4114f0af70a14429e75594.png'});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            imgPath!,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.transparent, Colors.black])),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 400, left: 50),
          child: Container(
            width: 128,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(99))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'icons/tag_purple.png',
                    scale: 2,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Meditation',
                    style: TextStyle(color: Colors.purple.shade800),
                  ),
                ],
              ),
            ),
          ),
        ),
        Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4),
                    child: Container(
                      height: 4,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(99)),
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4),
                    child: Container(
                      height: 4,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(99)),
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 48,
                        height: 48,
                        child: MaterialButton(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          onPressed: () => Navigator.pop(context),
                          color: Colors.white,
                          child: Image.asset(
                            'icons/arrow_left_purple.png',
                            scale: 2,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        'Maria Dl Valio',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        '17m',
                        style: TextStyle(color: Colors.white54),
                      )
                    ],
                  ),
                  Image.asset(
                    'icons/download.png',
                    scale: 2,
                  ),
                ],
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.favorite_outline,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
