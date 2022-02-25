import 'dart:convert';

class Post {

String? title; 
int? like;
  Post({
    this.title,
    this.like,
  });

  Post copyWith({
    String? title,
    int? like,
  }) {
    return Post(
      title: title ?? this.title,
      like: like ?? this.like,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'like': like,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      title: map['title'],
      like: map['like']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) => Post.fromMap(json.decode(source));

  @override
  String toString() => 'Post(title: $title, like: $like)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Post &&
      other.title == title &&
      other.like == like;
  }

  @override
  int get hashCode => title.hashCode ^ like.hashCode;
}
