enum Genre {
  fiction,
  nonFiction,
  science,
  history,
  biography,
  technology,
  fantasy,
  mystery,
  romance,
  other,
}

extension GenreExtension on Genre {
  String get label {
    switch (this) {
      case Genre.fiction:
        return 'Ficção';
      case Genre.nonFiction:
        return 'Não Ficção';
      case Genre.science:
        return 'Ciência';
      case Genre.history:
        return 'História';
      case Genre.biography:
        return 'Biografia';
      case Genre.technology:
        return 'Tecnologia';
      case Genre.fantasy:
        return 'Fantasia';
      case Genre.mystery:
        return 'Mistério';
      case Genre.romance:
        return 'Romance';
      case Genre.other:
        return 'Outro';
    }
  }
}