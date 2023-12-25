import 'package:flutter/material.dart';
import 'package:redit_clone/features/Home/Screens/home_screen.dart';
import 'package:redit_clone/features/auth/screens/login_screen.dart';
import 'package:redit_clone/features/community/screens/community_screen.dart';
import 'package:redit_clone/features/community/screens/create_community_screen.dart';
import 'package:redit_clone/features/community/screens/edit_community_screen.dart';
import 'package:redit_clone/features/community/screens/mod_tools_screen.dart';
import 'package:routemaster/routemaster.dart';

//loggedOut
//loggedIN

final loggedOutRoute = RouteMap(
  routes: {
    '/': (_) => const MaterialPage(child: LoginScreen()),
  },
);

final loggedInRoute = RouteMap(
  routes: {
    '/': (_) => const MaterialPage(child: HomeScreen()),
    '/create-community': (_) =>
        const MaterialPage(child: CreateCommunityScreen()),
    '/r/:name': (route) => MaterialPage(
          child: CommunityScreen(
            name: route.pathParameters['name']!,
          ),
        ),
    '/mode-tools/:name': (routeData) => MaterialPage(
          child: ModToolsScreen(
            name: routeData.pathParameters['name']!,
          ),
        ),
    '/edit-community/:name': (routeData) => MaterialPage(
      child: EditCommunityScreen(
        name: routeData.pathParameters['name']!,
      ),
    ),
  },
);
