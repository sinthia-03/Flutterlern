class TodoModel {
  final String id;
  final String title;
  final String description;
  final DateTime createdDate;
  final int version;

  TodoModel({
    required this.id,
    required this.title,
    required this.description,
    required this.createdDate,
    required this.version,
  });

  /// Convert JSON → Model
  factory TodoModel.fromJson(Map<String, dynamic> json) {
    return TodoModel(
      id: json['_id'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      createdDate: DateTime.parse(json['created_date']),
      version: json['__v'] ?? 0,
    );
  }

  /// Convert Model → JSON
  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'title': title,
      'description': description,
      'created_date': createdDate.toIso8601String(),
      '__v': version,
    };
  }
}