import 'package:ca_example/data/models/user/album/album_model.dart';
import 'package:ca_example/data/models/user/albumWithPhoto/album_photos_model.dart';
import 'package:ca_example/data/services/album_service.dart';
import 'package:ca_example/bloc/album_bloc/album_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class AlbumView extends StatelessWidget {
  final int userId;
  final Album album;
  const AlbumView._({
    super.key,
    required this.album,
    required this.userId,
  });

  static Route<String> route({
    required Album album,
    required int userId,
  }) {
    return MaterialPageRoute(
        builder: (_) => AlbumView._(
              album: album,
              userId: userId,
            ));
  }

  @override
  Widget build(BuildContext context) {
    final AlbumService albumService = GetIt.instance<AlbumService>();
    return BlocProvider(
      create: (context) => AlbumBloc(
        albumService: albumService,
      )..add(AlbumEvent.started(userId: userId, album: album)),
      child: AlbumBody(
        album: album,
      ),
    );
  }
}

class AlbumBody extends StatelessWidget {
  final Album album;
  const AlbumBody({
    super.key,
    required this.album,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Альбом ${album.title}'),
        ),
        body: BlocBuilder<AlbumBloc, AlbumState>(
          builder: (context, state) {
            return state.when(
                initial: (() => const SizedBox()),
                loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                received: (AlbumWithPhotos album) => SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          ...album.photos.map((e) => Column(
                                children: [
                                  Text(e.title),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Image.network(e.url),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                failure: (e) => Center(child: Text(e)));
          },
        ));
  }
}
