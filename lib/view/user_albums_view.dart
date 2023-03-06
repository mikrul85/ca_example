import 'package:ca_example/data/models/user/album/album_model.dart';
import 'package:ca_example/data/models/user/album/thumbnail/thumbnail_model.dart';
import 'package:ca_example/view/abum_view.dart';
import 'package:flutter/material.dart';

class UserAlbumsView extends StatelessWidget {
  final int userId;
  final List<Album> listAlbums;
  final List<Thumbnail> listTn;
  const UserAlbumsView._(
      {super.key,
      required this.userId,
      required this.listAlbums,
      required this.listTn});

  static Route<String> route({
    required int userId,
    required List<Album> listAlbums,
    required List<Thumbnail> listTn,
  }) {
    return MaterialPageRoute(
        builder: (_) => UserAlbumsView._(
              userId: userId,
              listAlbums: listAlbums,
              listTn: listTn,
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Альбомы пользователя'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5,
            ),
            ...listAlbums.map((e) {
              Thumbnail tn = listTn.firstWhere(
                  (element) => element.albumId == e.id,
                  orElse: () => Thumbnail(albumId: -1, url: ''));
              return InkWell(
                onTap: () => Navigator.of(context).push<void>(
                  AlbumView.route(album: e, userId: userId),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e.title,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
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
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
