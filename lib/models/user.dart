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

  static User fromSanp(DocumentSnapshot snap) {
    var data = snap.data() as Map<String, dynamic>;

    return User(
      username: data['username'],
      uid: data['uid'],
      email: data['email'],
      photoUrl: data['photoUrl'],
      bio: data['bio'],
      followers: data['followers'],
      following: data['following'],
    );
  }
}
