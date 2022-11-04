import 'package:saudi_toursim_guide/models/comments.dart';

class Trip {
  final String id;
  final List<String> categories;
  final String title;
  final String placeImage;
  final String description;
  List<CommentModel>? comments;
  final String? placeLocation;

  Trip(
      {required this.id,
      required this.categories,
      required this.title,
      required this.placeImage,
      required this.description,
      this.comments,
      this.placeLocation});
}
