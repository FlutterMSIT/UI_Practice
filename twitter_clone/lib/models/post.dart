class Post {
  final String title;
  final String? author;
  final String? imageUrl;
  final int? likes;
  final int? comments;
  final int? shares;
  final String? content;

  Post({
    required this.title,
    this.author,
    this.imageUrl,
    this.likes,
    this.comments,
    this.shares,
    this.content,
  });
}

