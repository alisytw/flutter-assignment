import 'package:flutter/material.dart';
import '/widgets/post_header_widget.dart';
import '/widgets/post_interactions_widget.dart';

class ImagesPostWidget extends StatelessWidget {
  final Color? backgroundColor;
  final String? screen;
  const ImagesPostWidget(
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
          children: [
            PostHeaderWidget(
              imgPath: 'imgs/profile/a18fd1db1b79db5a547f7d1a51ca6aa1.png',
              title: 'Alexa',
              time: '2w ago',
              screen: screen,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          image: DecorationImage(
                            image: AssetImage(
                                'imgs/post/5aaee647cfaac70616f4ae7a705b8bc6.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'imgs/post/2899a30a1e54467a54d709ef9349c328.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'imgs/post/e83f808bd4bf41fd8f833b5a7cdc04ad.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            PostInteractionsWidget(
              screen: screen,
            ),
          ],
        ),
      ),
    );
  }
}
