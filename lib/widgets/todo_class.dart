class TodoClass {
  TodoClass({
    required this.title,
    required this.description,
    this.isDone = false,
    required this.isFavorite,
  });

  final String title;
  final String? description;
  bool isDone;
  bool isFavorite;
}
