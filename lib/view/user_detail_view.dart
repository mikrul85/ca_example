import 'package:ca_example/data/models/user/album/thumbnail/thumbnail_model.dart';
import 'package:ca_example/data/models/user/user_model.dart';
import 'package:ca_example/data/services/user_service.dart';
import 'package:ca_example/bloc/user_detail_bloc/user_detail_bloc.dart';
import 'package:ca_example/bloc/users_bloc/users_bloc.dart';
import 'package:ca_example/view/user_albums_view.dart';
import 'package:ca_example/view/user_posts_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class UserDetailView extends StatelessWidget {
  final User user;
  const UserDetailView._({super.key, required this.user});

  static Route<String> route({required User user}) {
    return MaterialPageRoute(builder: (_) => UserDetailView._(user: user));
  }

  @override
  Widget build(BuildContext context) {
    final UserService userService = GetIt.instance<UserService>();
    return BlocProvider(
      create: (context) => UserDetailBloc(
        userService: userService,
      )..add(UserDetailEvent.started(id: user.id.toString())),
      child: UserDetailViewBody(
        user: user,
      ),
    );
  }
}

class UserDetailViewBody extends StatelessWidget {
  final User user;
  const UserDetailViewBody({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(user.username),
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
                const Text(
                  'Данные пользователя:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text('Имя: ${user.name}'),
                Text('e-mail: ${user.email}'),
                Text('Телефон: ${user.phone}'),
                Text('Сайт: ${user.website}'),
                RichText(
                  text: TextSpan(
                    text: 'Компания: ${user.company.name}, ${user.company.bs} ',
                    style: const TextStyle(color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: user.company.catchPhrase,
                          style: const TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.black54)),
                    ],
                  ),
                ),
                Text('Адрес: ${user.address.toString()}'),
                const SizedBox(
                  height: 15,
                ),
                BlocConsumer<UserDetailBloc, UserDetailState>(
                  listener: (context, state) {
                    state.mapOrNull(
                        loading: ((_) => context
                            .read<UsersBloc>()
                            .add(UsersEvent.update(userId: user.id))));
                  },
                  builder: (context, state) {
                    return state.when(
                      initial: () => const SizedBox(),
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      received: (listPosts, listAlbums, listTn) => Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Посты пользователя:',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              ...listPosts.sublist(0, 3).map((e) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      e.title,
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(e.body.split("\n").first),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                );
                              }),
                              TextButton(
                                onPressed: () =>
                                    Navigator.of(context).push<void>(
                                  UserPostsView.route(listPosts: listPosts),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.black12),
                                ),
                                child: const Text('Все посты'),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                'Альбомы пользователя:',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              ...listAlbums.sublist(0, 3).map((e) {
                                Thumbnail tn = listTn.firstWhere(
                                    (element) => element.albumId == e.id,
                                    orElse: () =>
                                        Thumbnail(albumId: -1, url: ''));
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      e.title,
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    tn.albumId != -1
                                        ? Image.network(tn.url)
                                        : const SizedBox(),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                );
                              }),
                              TextButton(
                                onPressed: () => Navigator.of(context)
                                    .push<void>(UserAlbumsView.route(
                                  userId: user.id,
                                  listAlbums: listAlbums,
                                  listTn: listTn,
                                )),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.black12),
                                ),
                                child: const Text('Все альбомы'),
                              ),
                            ],
                          )
                        ],
                      ),
                      failure: (e) => Center(child: Text(e)),
                    );
                  },
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ));
  }
}
