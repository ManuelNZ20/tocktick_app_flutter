import 'package:flutter/material.dart';
import 'package:tocktick_app/domain/entities/video_post.dart';
import 'package:tocktick_app/domain/repositories/video_posts_repositories.dart';
// import 'package:tocktick_app/infrastructure/models/local_video_model.dart';

// import 'package:tocktick_app/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {
  // TODO: Repository, DataSource

  final VideoPostRepository videosRepository;

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({
    required this.videosRepository
  });

  Future<void> loadNextPage() async {
    // todo: cargar videos
    // await Future.delayed(const Duration(seconds: 2));/* simulación de una data */

    // final List<VideoPost> newVideos = videoPosts.map(
    //   (video) => LocalVideoModel.fromJson(video).toVideoPostEntity()
    // ).toList();
    final newVideos = await videosRepository.getTrendingVideosByPage(1);
    videos.addAll( newVideos );
    initialLoading=  false;
    notifyListeners();
  }
}
