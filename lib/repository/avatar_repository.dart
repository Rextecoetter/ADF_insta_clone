import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:instagram_clone_ui/model/avatar/avatar.dart';

class AvatarRepository {
  Future<List<Avatar>> findAll() async {
    var data = await rootBundle.loadString('assets/stories.json');

    List<dynamic> storieFeed = jsonDecode(data);

    print(storieFeed.length);

    // storieFeed.forEach((element) {
    //   print(element);
    // });

    return storieFeed.map((e) => Avatar.fromMap(e)).toList();
  }
}
