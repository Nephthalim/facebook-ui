import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String profilePicUrl;
  final String caption;
  final int likeNum;
  final int commentNum;
  final String time;

  PostItem(this.name, this.imageUrl, this.profilePicUrl, this.caption,
      this.likeNum, this.commentNum, this.time);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            profilePicUrl,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 23,
                          width: double.infinity,
                          child: Text(
                            name,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              time,
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.query_builder,
                              color: Colors.grey,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  bottom: 16.0,
                  right: 16.0,
                ),
                child: Text(
                  caption,
                  softWrap: true,
                  overflow: TextOverflow.fade,
                  style: TextStyle(fontSize: 17, fontFamily: "Roboto"),
                ),
              ),
              imageUrl != null
                  ? Container(
                      child: Image.network(
                        imageUrl,
                        height: 300,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    )
                  : Container()
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      child: Icon(
                        Icons.thumb_up,
                        color: Colors.grey,
                      ),
                      height: 20,
                      width: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("$likeNum"),
                    ),
                    SizedBox(
                      width: 220,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("$commentNum Comments"),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: SizedBox(
                    child: Text(
                      "_________________________________________________________",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: null,
                      child: Text(
                        "Like",
                      ),
                    ),
                    InkWell(
                      child: Text(
                        "Comment",
                      ),
                    ),
                    InkWell(
                      child: Text(
                        "Share",
                      ),
                    ),
                  ],
                ),
              ],
            )),
        Container(
          height: 10,
          color: Colors.blueGrey[100],
        ),
      ],
    );
  }
}
