import 'package:app/models/post_model.dart';
import 'package:flutter/material.dart';

class PostContaner extends StatelessWidget {
  final Post post;
  const PostContaner({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: Colors.red,
    );
  }
}
