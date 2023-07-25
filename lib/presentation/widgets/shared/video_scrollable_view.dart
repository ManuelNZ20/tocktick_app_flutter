
import 'package:flutter/material.dart';
import 'package:tocktick_app/presentation/widgets/video/fullscreen_player.dart';
import 'package:tocktick_app/presentation/widgets/video_player/video_buttons.dart';

import '../../../domain/entities/video_post.dart';

class VideoScrollableView extends StatelessWidget {

  final List<VideoPost> videos;

  const VideoScrollableView({
    super.key,
    required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        itemCount: videos.length,
        itemBuilder: (context, index) {
          final VideoPost video = videos[index];
          
          return Stack(
            children: [
              // Video Player + gradiente
              SizedBox.expand(
                child: FullScreenPlayer(videoUrl: video.videoUrl,caption: video.caption,),
              ),
              // Botones
                Positioned(
                  bottom: 40,
                  right: 20,
                  child: VideoButtons(video: video)),
              // 
            ],
          );
        },
      );
  }
}