import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../model/modeldart.dart';


class TodoController extends ChangeNotifier {
  List<TodoModel> _todos = [];
  bool _isLoading = false;
  String? _errorMessage;

  List<TodoModel> get todos => _todos;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  final String baseUrl = "YOUR_API_URL_HERE";

  /// Fetch all todos
  Future<void> fetchTodos() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      final response = await http.get(Uri.parse(baseUrl));

      if (response.statusCode == 200) {
        List<dynamic> jsonData = jsonDecode(response.body);

        _todos = jsonData
            .map((item) => TodoModel.fromJson(item))
            .toList();
      } else {
        _errorMessage = "Failed to load data: ${response.statusCode}";
      }
    } catch (e) {
      _errorMessage = "Error: $e";
    }

    _isLoading = false;
    notifyListeners();
  }
}