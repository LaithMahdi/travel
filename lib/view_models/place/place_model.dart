import '../review/review_model.dart';
import '../travel/travel_model.dart';

class PlaceModel {
  final int id;
  final String name;
  final TravelModel travel;
  final String image;
  final String duration;
  final int nbstar;
  final int nbReview;
  final double price;
  final bool isFavorite;
  final String location;
  final String description;
  final List<ReviewModel> reviews;

  PlaceModel({
    required this.id,
    required this.name,
    required this.travel,
    required this.image,
    required this.duration,
    required this.nbstar,
    required this.nbReview,
    required this.price,
    required this.isFavorite,
    required this.location,
    required this.description,
    required this.reviews,
  });
}
