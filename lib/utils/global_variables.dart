import 'package:flutter/material.dart';
import 'package:instagram_responsive_app/screens/add_post_screen.dart';
import 'package:instagram_responsive_app/screens/feed_screen.dart';
import 'package:instagram_responsive_app/screens/search_screen.dart';

const webScreenSize = 600;

const homeScreenItems = [
  FeedScreen(),
  SearchScreen(),
  AddPostScreen(),
  Text('fav'),
  Text('profile'),
];
