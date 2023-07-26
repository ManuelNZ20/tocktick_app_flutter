

import 'package:tocktick_app/domain/datasources/video_posts_datasource.dart';
import 'package:tocktick_app/domain/entities/video_post.dart';
import 'package:tocktick_app/infrastructure/models/local_video_model.dart';
import 'package:tocktick_app/shared/data/local_video_posts.dart';

class LocalVideosDatasource implements VideoPostDatasource {

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    // TODO: implement getFavoriteVideosByUser

    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async{
    // TODO: implement getTrendingVideosByPage
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts.map((e) => LocalVideoModel.fromJson(e).toVideoPostEntity()).toList();
    
    // throw UnimplementedError();
    return newVideos;

  }

}

