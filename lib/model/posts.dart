import 'package:flutter/widgets.dart';

class Posts {
  @required
  final String name;
  @required
  final String caption;
  @required
  final int likeNum;
  @required
  final int commentNum;
  @required
  final String profilePicUrl;
  final String imageUrl;
  final String time;

  const Posts({
    this.name,
    this.caption,
    this.likeNum,
    this.commentNum,
    this.imageUrl,
    this.profilePicUrl,
    this.time
  });
}
