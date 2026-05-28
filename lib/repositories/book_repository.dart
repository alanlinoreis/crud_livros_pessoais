import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/book.dart';

class BookRepository {
  static const _key = 'books';

  Future<List<Book>> getAll() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(_key);
    if (jsonString == null) return [];
    final List<dynamic> jsonList = jsonDecode(jsonString);
    return jsonList.map((item) => Book.fromJson(item)).toList();
  }

  Future<void> save(Book book) async {
    final books = await getAll();
    books.add(book);
    await _persist(books);
  }

  Future<void> update(Book updatedBook) async {
    final books = await getAll();
    final index = books.indexWhere((b) => b.id == updatedBook.id);
    if (index != -1) books[index] = updatedBook;
    await _persist(books);
  }

  Future<void> delete(String id) async {
    final books = await getAll();
    books.removeWhere((b) => b.id == id);
    await _persist(books);
  }

  Future<void> _persist(List<Book> books) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = jsonEncode(books.map((b) => b.toJson()).toList());
    await prefs.setString(_key, jsonString);
  }
}