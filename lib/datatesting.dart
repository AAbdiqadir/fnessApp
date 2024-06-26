import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class video__ extends StatefulWidget {
   video__({Key? key,
     required this.video

  })
       : super(key: key);

  String video ;
  @override
  State<video__> createState() => _video__State();
}

class _video__State extends State<video__> {

  late YoutubePlayerController _controller;

  @override
  void initState() {
    // TODO: implement initState
    String? videoId = widget.video;
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(videoId).toString(),
      flags:  YoutubePlayerFlags(
        autoPlay: false,
        mute: true,
        loop: false,
        controlsVisibleAtStart: true,


      ),

    );
    super.initState();
  }
  void dispose() {
    _controller.dispose();

    super.dispose();
  }


  // YoutubePlayerController _controller = YoutubePlayerController(
  //   initialVideoId: YoutubePlayer.convertUrlToId(videoId.).toString(),
  //   flags: YoutubePlayerFlags(
  //     autoPlay: true,
  //     mute: true,
  //   ),
  // );

  // YoutubePlayer(
  // controller: _controller,
  // showVideoProgressIndicator: true,
  // videoProgressIndicatorColor: Colors.amber,
  // progressColors: ProgressColors(
  // playedColor: Colors.amber,
  // handleColor: Colors.amberAccent,
  // ),
  // onReady () {
  //   _controller.addListener(listener);
  // },
  // ),
  bool shouldPop = true;
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: YoutubePlayerBuilder(
            player: YoutubePlayer(
              controller: _controller,
                bottomActions: [

                  // CurrentPosition(),
                  // if


                  // ProgressBar(),
                  // RemainingDuration(),
                  // PlaybackSpeedButton(),
                ]

            ),
            builder: (context, player){
              return Column(
                children: [
                  // some widgets
                  player,
                  //some other widgets
                ],
              );

        }
        ),
      );
  }

  youtubeHierarchy() {
    return Container(
      child: Align(
        alignment: Alignment.center,
        child: FittedBox(
          fit: BoxFit.fill,
          child: YoutubePlayer(
            controller: _controller,
          ),
        ),
      ),
    );
  }
}