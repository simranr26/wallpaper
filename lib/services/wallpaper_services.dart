import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wall_app/model/wallpaper.dart';

class WallpaperServices {
  List<Wallpaper> wallpapers = [];
 
  Future getApiData() async {
    final url = Uri.parse(
        'https://api.unsplash.com/photos/?client_id=5ZQHVGyluBU1Kbasio6kxBBgDW3SOwrL_FofASh0ijk');
    final response = await http.get(url);
    List<dynamic> apiDatas = jsonDecode(response.body);
    for (var apiData in apiDatas) {
      Wallpaper wallpaper = Wallpaper.fromjson(apiData);
      wallpapers.add(wallpaper);
     
    }
    return wallpapers;
  }
}
