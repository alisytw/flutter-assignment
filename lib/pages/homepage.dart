import 'package:flutter/material.dart';
import '/widgets/end_section_profile_widget.dart';
import '/widgets/middle_section_scrollable_widget.dart';
import '/widgets/navigation_bar_vertical_widget.dart';
import '/widgets/bottom_navigation_bar_widget.dart';
import '/widgets/image_post_widget.dart';
import '/widgets/images_post_widget.dart';
import '/widgets/appbar_widget.dart';
import '/widgets/text_post_widget.dart';
import '/widgets/stories_section_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 1024) {
      return Scaffold(
        backgroundColor: const Color.fromRGBO(29, 39, 50, 1),
        body: ListView(
          children: const [
            AppBarWidget(),
            StoriesSectionWidget(),
            TextPostWidget(),
            ImagePostWidget(),
            ImagesPostWidget(),
          ],
        ),
        bottomNavigationBar: const BottomNavigationBarWidget(),
      );
    } else {
      return const Scaffold(
        backgroundColor: Color.fromRGBO(29, 39, 50, 1),
        body: Row(
          children: [
            NavBarVerticalWidget(),
            MiddleSectionScrollableWidget(),
            EndSectionProfileWidget(),
          ],
        ),
      );
    }
  }
}
