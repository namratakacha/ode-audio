class RadioModel1 {
  String radioImg;
  String radioTitle;
  String radioSubtitle;
  String artistImg;
  String artistTitle;

  RadioModel1(this.radioImg, this.radioTitle, this.radioSubtitle, this.artistImg,
      this.artistTitle);
}

List<RadioModel1> items = [
  RadioModel1(
      'assets/images/temp/radio_fm_one.PNG',
      'KJLH 102.3FM',
      'Serving the Los Angles Urben',
      'assets/images/temp/radio_artist_one.PNG',
      'Drake'),
  RadioModel1(
      'assets/images/temp/radio_fm_two.PNG',
      'WHUR 96.3',
      'The best of DC Radio',
      'assets/images/temp/radio_artist_two.PNG',
      'Travis Scott'),
  RadioModel1(
      'assets/images/temp/radio_fm_one.PNG',
      'KJLH 102.3FM',
      'Serving the Los Angles Urben',
      'assets/images/temp/radio_artist_one.PNG',
      'Drake'),
  RadioModel1(
      'assets/images/temp/radio_fm_two.PNG',
      'WHUR 96.3',
      'The best of DC Radio',
      'assets/images/temp/radio_artist_two.PNG',
      'Travis Scott'),
];

class RadioModel {
  final Settings? settings;
  final Data? data;

  RadioModel({
    this.settings,
    this.data,
  });

  RadioModel.fromJson(Map<String, dynamic>? json)
      : settings = (json?['settings'] as Map<String,dynamic>?) != null ? Settings.fromJson(json?['settings'] as Map<String,dynamic>) : null,
        data = (json?['data'] as Map<String,dynamic>?) != null ? Data.fromJson(json?['data'] as Map<String,dynamic>) : null;

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
  final List<RadioList>? radio;
  final int? nextPage;
  final int? currentPage;
  final int? total;

  Data({
    this.radio,
    this.nextPage,
    this.currentPage,
    this.total,
  });

  Data.fromJson(Map<String, dynamic> json)
      : radio = (json['radio'] as List?)?.map((dynamic e) => RadioList.fromJson(e as Map<String,dynamic>)).toList(),
        nextPage = json['next_page'] as int?,
        currentPage = json['current_page'] as int?,
        total = json['total'] as int?;

  Map<String, dynamic> toJson() => {
    'radio' : radio?.map((e) => e.toJson()).toList(),
    'next_page' : nextPage,
    'current_page' : currentPage,
    'total' : total
  };
}

class RadioList {
  final int? id;
  final String? name;
  final String? shortDescription;
  final String? profileImage;
  final String? link;
  final int? isFeatured;
  final String? createdAt;
  final String? updatedAt;
  final dynamic deletedAt;
  final String? profileimageUrl;
  final String? profileimageThumbUrl;

  RadioList({
    this.id,
    this.name,
    this.shortDescription,
    this.profileImage,
    this.link,
    this.isFeatured,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.profileimageUrl,
    this.profileimageThumbUrl,
  });

  RadioList.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?,
        shortDescription = json['short_description'] as String?,
        profileImage = json['profile_image'] as String?,
        link = json['link'] as String?,
        isFeatured = json['is_featured'] as int?,
        createdAt = json['created_at'] as String?,
        updatedAt = json['updated_at'] as String?,
        deletedAt = json['deleted_at'],
        profileimageUrl = json['profileimage_url'] as String?,
        profileimageThumbUrl = json['profileimage_thumb_url'] as String?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    'short_description' : shortDescription,
    'profile_image' : profileImage,
    'link' : link,
    'is_featured' : isFeatured,
    'created_at' : createdAt,
    'updated_at' : updatedAt,
    'deleted_at' : deletedAt,
    'profileimage_url' : profileimageUrl,
    'profileimage_thumb_url' : profileimageThumbUrl
  };
}
