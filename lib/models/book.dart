class Book {
  final String id;
  final String title;
  final String author;
  final int publicationYear;

  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.publicationYear,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'author': author,
      'publicationYear': publicationYear,
    };
  }

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'],
      title: json['title'],
      author: json['author'],
      publicationYear: json['publicationYear'],
    );
  }
}