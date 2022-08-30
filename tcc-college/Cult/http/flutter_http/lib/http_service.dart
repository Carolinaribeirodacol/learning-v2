import 'dart:convert';
import 'package:flutter_http/post_model.dart';
import 'package:http/http.dart';

class HttpService {
  final String postURL = "localhost/api/user";

  Future<void> deletePost(int id) async {
    Response res = await delete("$postURL/$id");

    if (res.statusCode == 200) {
      print("Deletado");
    }
  }

  Future<List<Post>> getPosts() async {
    Response res = await get(postURL);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<Post> posts =
          body.map((dynamic item) => Post.fromJson(item)).toList();
      return posts;
    } else {
      throw "Erro no Post";
    }
  }
}
