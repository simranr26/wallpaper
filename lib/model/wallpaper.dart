class Wallpaper {
  String id;
  String urlofImage;
  Wallpaper(this.id, this.urlofImage);

  Wallpaper.fromjson( Map<String, dynamic> json) :
   id = json["id"],
   urlofImage = json["urls"]["regular"];
}
