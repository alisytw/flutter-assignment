import 'package:flutter/material.dart';
import '/widgets/image_post_widget.dart';
import '/widgets/images_post_widget.dart';
import '/widgets/stories_section_widget.dart';
import '/widgets/text_post_widget.dart';

class MiddleSectionScrollableWidget extends StatelessWidget {
  const MiddleSectionScrollableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16),
        child: Column(
          children: [
            const StoriesSectionWidget(),
            Expanded(
              flex: 4,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32.0, vertical: 8.0),
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 224.0),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(99))),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Icon(Icons.search), Text('search')],
                              ),
                            ),
                          ),
                        ),
                        ImagePostWidget(
                          screen: 'lg',
                          backgroundColor: Colors.grey.shade200,
                        ),
                        TextPostWidget(
                          screen: 'lg',
                          backgroundColor: Colors.grey.shade200,
                        ),
                        ImagesPostWidget(
                          screen: 'lg',
                          backgroundColor: Colors.grey.shade200,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
