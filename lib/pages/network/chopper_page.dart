import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_components/pages/network/chopper/data/post_api_service.dart';

class ChopperPage extends StatelessWidget {
  Response<List<Map<String, dynamic>>> posts;

  void apa() async {
    final PostApiService a = PostApiService.create();
    posts = await a.getPosts();
    // print(posts.body);
  }

  @override
  Widget build(BuildContext context) {
    apa();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World'),
      ),
      body: const Center(
        child: Text('Hello world'),
      ),
    );
  }
}
