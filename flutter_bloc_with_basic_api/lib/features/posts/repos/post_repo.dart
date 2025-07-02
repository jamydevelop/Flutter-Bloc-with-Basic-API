import 'dart:convert';

import 'package:flutter_bloc_with_basic_api/features/posts/models/post_data_ui_model.dart';
import 'package:http/http.dart' as http;

class PostRepo {

  static Future<List<PostDataUiModel>> fetchPost() async {
    //Create client
    var client = http.Client();
    //Create variable of list Model for return.
    List<PostDataUiModel> post = [];

    //try catch
    try {

    //Make request
    var response = await client.get(Uri.parse('https://jsonplaceholder.org/posts'));
    //convert response to list using jsonDecode/response.body
    List result = jsonDecode(response.body);
    //for loop for each response will be stored in var list of model
    for(int i = 0; i < result.length; i++) {
      PostDataUiModel postModel = PostDataUiModel.fromMap(result[i]);
      post.add(postModel);
    }

    } catch (e) {
      print(e);
    }


    return post;
  }
}