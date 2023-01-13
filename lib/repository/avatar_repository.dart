import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:instagram_clone_ui/model/avatar/avatar.dart';

class AvatarRepository {
  Future<List<Avatar>> findAll() async {
    var jsonFile = await rootBundle.loadString('assets/stories.json');

    List<dynamic> storieFeed = jsonDecode(jsonFile) as List;

    print('bla: : $storieFeed');

    return storieFeed.map((e) => Avatar.fromJson(e)).toList();
  }
}
