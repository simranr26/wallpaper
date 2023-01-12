import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wall_app/model/wallpaper.dart';
import 'package:wall_app/provider/wallpaper_provider.dart';
import 'package:wall_app/widgets/card_visual.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Future.microtask(() => context.read<WallpaperProvider>().loadWallpaper());
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Wallpaper> wallpapers = context.watch<WallpaperProvider>().wallpapers;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Wallpaper App'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: ListView.builder(
              itemCount: wallpapers.length,
              itemBuilder: ((context, index) {
                Wallpaper wallpaper = wallpapers[index];
                return CardVisual( urltoImage: wallpaper.urlofImage,
                 
                );
              })),
        ));
  }
}
