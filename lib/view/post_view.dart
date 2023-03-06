import 'package:ca_example/data/models/user/post/post_model.dart';
import 'package:flutter/material.dart';

class PostView extends StatelessWidget {
  final Post post;
  const PostView._({super.key, required this.post});

  static Route<String> route({required Post post}) {
    return MaterialPageRoute(builder: (_) => PostView._(post: post));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Пост'),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                post.title,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(post.body),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
