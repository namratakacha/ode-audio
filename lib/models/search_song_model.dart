// class SearchSongModel {
//   String songImg;
//   String songTitle;
//   String songSubtitle;
//
//   SearchSongModel(this.songImg, this.songTitle, this.songSubtitle);
// }
//
// List<SearchSongModel> songs = [
//   SearchSongModel(
//     'assets/images/temp/search_song_one.jpg',
//     'Bruno Mars',
//     'Artist',
//   ),
//   SearchSongModel(
//     'assets/images/temp/search_song_two.jpg',
//     'Believer',
//     'Imagine Dragons',
//   ),
//   SearchSongModel(
//     'assets/images/temp/search_song_three.jpg',
//     'Closer',
//     'The Chainsmokers',
//   ),
//   SearchSongModel(
//     'assets/images/temp/library_songs_one.jpg',
//     'Old Town Road',
//     'Lli Nas X 2019',
//   ),
//   SearchSongModel(
//     'assets/images/temp/library_songs_two.jpg',
//     'Dont Start Now',
//     'Dua Lia 2019',
//   ),
// ];


class SearchSongModel {
  final Settings? settings;
  final Data? data;

  SearchSongModel({
    this.settings,
    this.data,
  });

  SearchSongModel.fromJson(Map<String, dynamic> json)
      : settings = (json['settings'] as Map<String,dynamic>?) != null ? Settings.fromJson(json['settings'] as Map<String,dynamic>) : null,
        data = (json['data'] as Map<String,dynamic>?) != null ? Data.fromJson(json['data'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'settings' : settings?.toJson(),
    'data' : data?.toJson()
  };
}

class Settings {
  final int? status;
  final String? message;
  final int? code;

  Settings({
    this.status,
    this.message,
    this.code,
  });

  Settings.fromJson(Map<String, dynamic> json)
      : status = json['status'] as int?,
        message = json['message'] as String?,
        code = json['code'] as int?;

  Map<String, dynamic> toJson() => {
    'status' : status,
    'message' : message,
    'code' : code
  };
}

class Data {
  final List<Songs>? songs;
  final List<dynamic>? recentlySerchSongs;

  Data({
    this.songs,
    this.recentlySerchSongs,
  });

  Data.fromJson(Map<String, dynamic> json)
      : songs = (json['songs'] as List?)?.map((dynamic e) => Songs.fromJson(e as Map<String,dynamic>)).toList(),
        recentlySerchSongs = json['recently_serch_songs'] as List?;

  Map<String, dynamic> toJson() => {
    'songs' : songs?.map((e) => e.toJson()).toList(),
    'recently_serch_songs' : recentlySerchSongs
  };
}

class Songs {
  final int? id;
  final String? songId;
  final String? songName;
  final String? artistName;
  final int? genre;
  final String? songUrl;
  final String? token;
  final String? duration;
  final String? image75;
  final String? image150;
  final String? image800;
  final String? createdAt;
  final String? updatedAt;

  Songs({
    this.id,
    this.songId,
    this.songName,
    this.artistName,
    this.genre,
    this.songUrl,
    this.token,
    this.duration,
    this.image75,
    this.image150,
    this.image800,
    this.createdAt,
    this.updatedAt,
  });

  Songs.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        songId = json['song_id'] as String?,
        songName = json['song_name'] as String?,
        artistName = json['artist_name'] as String?,
        genre = json['genre'] as int?,
        songUrl = json['song_url'] as String?,
        token = json['token'] as String?,
        duration = json['duration'] as String?,
        image75 = json['image_75'] as String?,
        image150 = json['image_150'] as String?,
        image800 = json['image_800'] as String?,
        createdAt = json['created_at'] as String?,
        updatedAt = json['updated_at'] as String?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'song_id' : songId,
    'song_name' : songName,
    'artist_name' : artistName,
    'genre' : genre,
    'song_url' : songUrl,
    'token' : token,
    'duration' : duration,
    'image_75' : image75,
    'image_150' : image150,
    'image_800' : image800,
    'created_at' : createdAt,
    'updated_at' : updatedAt
  };
}