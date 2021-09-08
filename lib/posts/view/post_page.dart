import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:my_app/posts/bloc/post_bloc.dart';
import 'package:my_app/posts/view/post_list.dart';

class PostPage extends StatelessWidget {
  const PostPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Posts')),
      body: BlocProvider(
        create: (context) => PostBloc(httpClient: http.Client())..add(PostFetched()),
        child: PostList(),
      ),
    );
  }
}
