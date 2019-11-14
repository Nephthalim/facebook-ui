import 'package:flutter/material.dart';

class PostBarItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: double.infinity,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://i.imgur.com/BoN9kdC.png"))),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.50),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[50],
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                child: Center(
                  child: Text("Add a post"),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 9.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey[50],
                borderRadius: BorderRadius.circular(
                  50,
                ),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.photo,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
