import 'package:ca_example/data/models/user/post/post_model.dart';
import 'package:ca_example/view/post_view.dart';
import 'package:flutter/material.dart';

class UserPostsView extends StatelessWidget {
  final List<Post> listPosts;
  const UserPostsView._({super.key, required this.listPosts});

  static Route<String> route({required List<Post> listPosts}) {
    return MaterialPageRoute(
        builder: (_) => UserPostsView._(listPosts: listPosts));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Посты пользователя'),
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
              ...listPosts.map((e) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      e.title,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(e.body.split("\n").first),
                    TextButton(
                      onPressed: () => Navigator.of(context).push<void>(
                        PostView.route(
                          post: e,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black12),
                      ),
                      child: const Text('Подробнее'),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                );
              }),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
