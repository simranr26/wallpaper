import 'package:flutter/material.dart';
import 'package:wall_app/model/wallpaper.dart';
import 'package:wall_app/services/wallpaper_services.dart';

class WallpaperProvider extends ChangeNotifier {
  List<Wallpaper> _wallpapers = [];
 List<Wallpaper> get wallpapers => _wallpapers;
  loadWallpaper() async {
    _wallpapers = await WallpaperServices().getApiData();
    notifyListeners();
  }
}
