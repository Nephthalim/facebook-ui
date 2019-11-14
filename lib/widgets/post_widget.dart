import '../items/spacer_item.dart';

import '../items/post_bar_item.dart';
import 'package:flutter/material.dart';
import '../items/stories_item.dart';
import '../data/stories_data.dart';
import '../items/post_item.dart';
import '../data/posts_data.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: STORIES_DATA
                  .map(
                    (storyData) => StoriesItem(
                      storyData.name,
                      storyData.storyUrl,
                      storyData.profilePicUrl,
                    ),
                  )
                  .toList(),
            ),
          ),
          PostBarItem(),
          SpacerItem(),
          Column(
            // scrollDirection: Axis.vertical,
            children: POSTS_DATA
                .map(
                  (postData) => PostItem(
                      postData.name,
                      postData.imageUrl,
                      postData.profilePicUrl,
                      postData.caption,
                      postData.likeNum,
                      postData.commentNum,
                      postData.time),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
