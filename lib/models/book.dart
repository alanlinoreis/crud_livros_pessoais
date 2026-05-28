import '../utils/genre.dart';

class Book {
  final String id;
  final String title;
  final String author;
  final int publicationYear;
  final Genre genre;

  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.publicationYear,
    required this.genre,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'author': author,
      'publicationYear': publicationYear,
      'genre': genre.name,
    };
  }

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'],
      title: json['title'],
      author: json['author'],
      publicationYear: json['publicationYear'],
      genre: Genre.values.firstWhere((g) => g.name == json['genre']),
    );
  }
}