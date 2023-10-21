import 'package:clean_blog_flutter/article/presentation/pages/the_front_page.dart';
import 'package:clean_blog_flutter/di/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Future<void> main() async {
  await configureInjection();

  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const TheFrontPage();
      },
      routes: const <RouteBase>[
        // GoRoute(
        //   path: 'details',
        //   builder: (BuildContext context, GoRouterState state) {
        //     return const ArtP();
        //   },
        // ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      title: 'Flutter Demo',

      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blueGrey.shade800,
        scaffoldBackgroundColor: Colors.white,
      ),
      routerConfig: _router,
    );
  }
}
