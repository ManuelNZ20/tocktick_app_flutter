

import 'package:tocktick_app/domain/datasources/video_posts_datasource.dart';
import 'package:tocktick_app/domain/entities/video_post.dart';

import '../../domain/repositories/video_posts_repositories.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository{

  final VideoPostDatasource videosDatasource;

  VideoPostsRepositoryImpl({
    required this.videosDatasource
  });

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasource.getTrendingVideosByPage(page);
  }

}

