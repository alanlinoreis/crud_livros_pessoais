import 'package:flutter/material.dart';
import '../models/book.dart';
import '../repositories/book_repository.dart';
import '../utils/genre.dart';

class FormPage extends StatefulWidget {
  final Book? book;

  const FormPage({super.key, this.book});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  final BookRepository _repository = BookRepository();

  late final TextEditingController _titleController;
  late final TextEditingController _authorController;
  late final TextEditingController _yearController;
  Genre _selectedGenre = Genre.other;

  bool get _isEditing => widget.book != null;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(
      text: widget.book?.title ?? '',
    );
    _authorController = TextEditingController(
      text: widget.book?.author ?? '',
    );
    _yearController = TextEditingController(
      text: widget.book?.publicationYear.toString() ?? '',
    );
    if (_isEditing) {
      _selectedGenre = widget.book!.genre;
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _authorController.dispose();
    _yearController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;

    final book = Book(
      id: _isEditing
          ? widget.book!.id
          : DateTime.now().millisecondsSinceEpoch.toString(),
      title: _titleController.text.trim(),
      author: _authorController.text.trim(),
      publicationYear: int.parse(_yearController.text.trim()),
      genre: _selectedGenre,
    );

    if (_isEditing) {
      await _repository.update(book);
    } else {
      await _repository.save(book);
    }

    if (mounted) {
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            _isEditing
                ? 'Livro alterado com sucesso!'
                : 'Livro cadastrado com sucesso!',
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_isEditing ? 'Editar livro' : 'Novo livro'),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 720),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: _titleController,
                    decoration: const InputDecoration(
                      labelText: 'Título',
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Informe o título do livro';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _authorController,
                    decoration: const InputDecoration(
                      labelText: 'Autor',
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Informe o autor do livro';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _yearController,
                    decoration: const InputDecoration(
                      labelText: 'Ano de publicação',
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Informe o ano de publicação';
                      }
                      final year = int.tryParse(value.trim());
                      if (year == null) {
                        return 'Informe um ano válido';
                      }
                      if (year < 1000 || year > DateTime.now().year) {
                        return 'Informe um ano entre 1000 e ${DateTime.now().year}';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  DropdownButtonFormField<Genre>(
                    initialValue: _selectedGenre,
                    decoration: const InputDecoration(
                      labelText: 'Gênero',
                    ),
                    items: Genre.values
                        .map(
                          (g) => DropdownMenuItem(
                            value: g,
                            child: Text(g.label),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      if (value != null) {
                        setState(() => _selectedGenre = value);
                      }
                    },
                  ),
                  const SizedBox(height: 32),
                  FilledButton(
                    onPressed: _save,
                    child: Text(_isEditing ? 'Salvar alterações' : 'Cadastrar'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}