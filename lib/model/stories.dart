import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class Stories {
  @required
  final String name;
  @required
  final String storyUrl;
  final String profilePicUrl;

  const Stories({this.name, this.profilePicUrl, this.storyUrl});
}
