import 'package:flutter/material.dart';

class StoriesItem extends StatelessWidget {
  final String name;
  final String storyUrl;
  final String profilePicUrl;

  StoriesItem(this.name, this.storyUrl, this.profilePicUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Stack(
          children: <Widget>[
            Container(
              width: 100,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.black,
                  ],
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Opacity(
                opacity: 0.7,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    storyUrl,
                  ),
                ),
              ),
            ),
            Positioned(
              child: Container(
                child: Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.fade,
                ),
                width: 95,
              ),
              bottom: 5,
              left: 4,
            ),
            profilePicUrl != null
                ? Positioned(
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(24, 119, 242, 1.0),
                      ),
                    ),
                    left: 3.5,
                    top: 3.5,
                  )
                : Container(),
            profilePicUrl != null
                ? Positioned(
                    child: Container(
                      width: 30,
                      height: 30,
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
                    top: 6,
                    left: 6,
                  )
                : Positioned(
                    child: InkWell(
                      
                      onTap: null,
                      child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 2.0),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.blue,
                          )),
                    ),
                    top: 6,
                    left: 6,
                  ),
          ],
        ),
      ),
    );
  }
}
