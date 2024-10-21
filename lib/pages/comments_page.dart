import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/comment_card_widget.dart';

class CommentsPage extends StatelessWidget {
  const CommentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(29, 39, 50, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(29, 39, 50, 1),
        leading: const BackButton(
          color: Colors.white,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Comments (7)',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    left: BorderSide(
                  color: Colors.purple.shade800,
                  width: 8,
                )),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 2,
                      color: Color.fromARGB(255, 67, 82, 98))
                ],
              ),
              width: double.infinity,
              child: const Padding(
                padding: EdgeInsets.all(32.0),
                child: Text('Write a comment ...'),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                CommentCardWidget(),
                CommentCardWidget(),
                CommentCardWidget(),
                CommentCardWidget(),
                CommentCardWidget(),
                CommentCardWidget(),
                CommentCardWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
