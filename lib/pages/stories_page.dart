import 'package:flutter/material.dart';
import '/widgets/story_widget.dart';

class StoriesPage extends StatelessWidget {
  const StoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 1024) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          backgroundColor: Colors.transparent,
          child: Image.asset(
            'icons/heart.png',
            scale: 2,
            color: Colors.white,
          ),
        ),
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'imgs/post/1a2ea942da4114f0af70a14429e75594.png',
                fit: BoxFit.cover,
              ),
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
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
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
          ],
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 48),
              child: Container(
                width: 260,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade200.withOpacity(0.5),
              ),
              width: 48,
              height: 48,
              child: const Icon(Icons.arrow_back_ios_new),
            ),
            const SizedBox(
              width: 8,
            ),
            const SizedBox(
              width: 300,
              child: StoryWidget(
                imgPath: 'imgs/stories/74aebe16a4ba91205ed6da4f5038fc96.jpg',
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade200.withOpacity(0.5),
              ),
              width: 48,
              height: 48,
              child: const Icon(Icons.arrow_forward_ios),
            ),
            const SizedBox(
              width: 8,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 48),
              child: SizedBox(
                width: 260,
                child: StoryWidget(
                  imgPath: 'imgs/stories/ba54a0926b720ae70cffa6cc4b1ac6df.jpg',
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
