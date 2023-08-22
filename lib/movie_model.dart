// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Movie2 {
  final bool adult;
  final String backdrop_path;
  final String poster_path;
  final int id;
  final String title;
  final String overview;
  Movie2({
    required this.adult,
    required this.backdrop_path,
    required this.poster_path,
    required this.id,
    required this.title,
    required this.overview,
  });

  Movie2 copyWith({
    bool? adult,
    String? backdrop_path,
    String? poster_path,
    int? id,
    String? title,
    String? overview,
  }) {
    return Movie2(
      adult: adult ?? this.adult,
      backdrop_path: backdrop_path ?? this.backdrop_path,
      poster_path: poster_path ?? this.poster_path,
      id: id ?? this.id,
      title: title ?? this.title,
      overview: overview ?? this.overview,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adult': adult,
      'backdrop_path': backdrop_path,
      'poster_path': poster_path,
      'id': id,
      'title': title,
      'overview': overview,
    };
  }

  factory Movie2.fromMap(Map<String, dynamic> map) {
    return Movie2(
      adult: map['adult'] as bool,
      backdrop_path: map['backdrop_path'] as String,
      poster_path: map['poster_path'] as String,
      id: map['id'] as int,
      title: map['title'] as String,
      overview: map['overview'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Movie2.fromJson(String source) => Movie2.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Movie2(adult: $adult, backdrop_path: $backdrop_path, poster_path: $poster_path, id: $id, title: $title, overview: $overview)';
  }

  @override
  bool operator ==(covariant Movie2 other) {
    if (identical(this, other)) return true;
  
    return 
      other.adult == adult &&
      other.backdrop_path == backdrop_path &&
      other.poster_path == poster_path &&
      other.id == id &&
      other.title == title &&
      other.overview == overview;
  }

  @override
  int get hashCode {
    return adult.hashCode ^
      backdrop_path.hashCode ^
      poster_path.hashCode ^
      id.hashCode ^
      title.hashCode ^
      overview.hashCode;
  }
}
