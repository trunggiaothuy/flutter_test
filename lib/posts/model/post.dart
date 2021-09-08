import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Post extends Equatable {
  Post({
    @required this.id,
    @required this.title,
    @required this.body,
  });

  final int id;
  final String title;
  final String body;

  @override
  // TODO: implement props
  List<Object> get props => [id, title, body];

  Post copyWith({int id, String titel, String body}) {
    return Post(
      id: id ?? this.id,
      title: titel ?? this.title  ,
      body: body ?? this.body,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id, 
      'title': title,
      'body': body,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      id: map['id'],
      title: map['title'],
      body: map['body'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) => Post.fromMap(json.decode(source));

  @override
  bool get stringify => true;
}
