import 'dart:convert';

import 'package:flutter_bloc_with_basic_api/features/posts/models/post_data_ui_model.dart';
import 'package:http/http.dart' as http;

class PostRepo {

  static Future<List<PostDataUiModel>> fetchPost() async {

    //Make client
    var client = http.Client();
    List<PostDataUiModel> posts = [];

    //Make request
    var response = await client.get(Uri.parse('https://jsonplaceholder.org/posts'));

    //convert response to map/list
    List result = jsonDecode(response.body);

    for(int i = 0; i < result.length; i++) {
      PostDataUiModel postData = PostDataUiModel.fromMap(result[i] as Map<String,dynamic>);
      posts.add(postData);
    }


    return posts;
  }
}