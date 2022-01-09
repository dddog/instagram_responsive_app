import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String username;
  final String uid;
  final String photoUrl;
  final String email;
  final String bio;
  final List followers;
  final List following;

  const User({
    required this.username,
    required this.uid,
    required this.email,
    required this.photoUrl,
    required this.bio,
    required this.followers,
    required this.following,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "uid": uid,
        "email": email,
        "photoUrl": photoUrl,
        "bio": bio,
        "followers": followers,
        "following": following,
      };

  static User fromJson(Map<String, dynamic> json) {
    // var snapshot = snap.data() as Map<String, dynamic>;

    return User(
      username: json['username'],
      uid: json['uid'],
      email: json['email'],
      photoUrl: json['photoUrl'],
      bio: json['bio'],
      followers: json['followers'],
      following: json['following'],
    );
  }
}
