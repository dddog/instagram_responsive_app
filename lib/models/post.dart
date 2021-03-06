import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String description;
  final String uid;
  final String username;
  final String postId;
  final datePublished;
  final String postUrl;
  final String profImage;
  final likes;

  const Post({
    required this.description,
    required this.uid,
    required this.username,
    required this.postId,
    required this.datePublished,
    required this.postUrl,
    required this.profImage,
    required this.likes,
  });

  Map<String, dynamic> toJson() => {
        "description": description,
        "uid": uid,
        "username": username,
        "postId": postId,
        "datePublished": datePublished,
        "postUrl": postUrl,
        "profImage": profImage,
        "likes": likes,
      };

  static Post fromSanp(DocumentSnapshot snap) {
    var data = snap.data() as Map<String, dynamic>;

    return Post(
      description: data['description'],
      uid: data['uid'],
      username: data['username'],
      postId: data['postId'],
      datePublished: data['datePublished'],
      postUrl: data['postUrl'],
      profImage: data['profImage'],
      likes: data['likes'],
    );
  }
}
