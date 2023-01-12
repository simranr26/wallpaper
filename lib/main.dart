import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wall_app/provider/wallpaper_provider.dart';
import 'package:wall_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider( create: (context) => WallpaperProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Wall App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
