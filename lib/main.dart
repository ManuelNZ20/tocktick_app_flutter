import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tocktick_app/config/theme/app_theme.dart';
import 'package:tocktick_app/domain/repositories/video_posts_repositories.dart';
import 'package:tocktick_app/infrastructure/datasources/local_video_datasource_impl.dart';
import 'package:tocktick_app/infrastructure/respositories/video_posts_repository_impl.dart';
import 'package:tocktick_app/presentation/providers/discover_provider.dart';
import 'package:tocktick_app/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final videosPostRepository = VideoPostsRepositoryImpl(
      videosDatasource: LocalVideosDatasource()
      );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          /* lazy: true, *///para que se carge aunque no se necesite desde un principio
          create: (_)=>DiscoverProvider(
            videosRepository: videosPostRepository
          )..loadNextPage()),
      ],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().themeData(),
        home: const DiscoverScreen()
      ),
    );
  }
}