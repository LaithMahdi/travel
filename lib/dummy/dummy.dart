import '../view_models/place/place_model.dart';
import '../view_models/review/review_model.dart';
import '../view_models/travel/travel_model.dart';

List<TravelModel> travelList = [
  TravelModel(id: 1, name: "Hiking", image: "assets/images/icones/Hiking.png"),
  TravelModel(
      id: 2, name: "Sky Tours", image: "assets/images/icones/Sky Tours.png"),
  TravelModel(
      id: 3,
      name: "Beach Vacations",
      image: "assets/images/icones/Beach Vacations.png"),
  TravelModel(
      id: 4,
      name: "Cultural Travel",
      image: "assets/images/icones/Cultural Travel.png"),
  TravelModel(
      id: 5,
      name: "Adventure Travel",
      image: "assets/images/icones/Adventure Travel.png"),
  TravelModel(
      id: 6, name: "Road Trips", image: "assets/images/icones/Road Trips.png"),
  TravelModel(
      id: 7, name: "Cruises", image: "assets/images/icones/Cruises.png"),
  TravelModel(
      id: 8,
      name: "Wildlife Safaris",
      image: "assets/images/icones/Wildlife Safaris.png"),
];

List<ReviewModel> reviews = [
  ReviewModel(
      id: 1,
      name: "John Doe",
      nbstar: 4.5,
      comment: "Amazing place!",
      date: "2021-09-01"),
  ReviewModel(
      id: 2,
      name: "Jane Smith",
      nbstar: 4.0,
      comment: "Beautiful and relaxing.",
      date: "2021-09-02"),
  ReviewModel(
      id: 3,
      name: "Alice Johnson",
      nbstar: 5.0,
      comment: "Incredible experience!",
      date: "2021-09-03"),
];

List<PlaceModel> places = [
  PlaceModel(
    id: 1,
    name: "Djerba Oasis Escape",
    image: "assets/images/Djerba Oasis Escape.jpg",
    travel: travelList[2],
    duration: "7 Days",
    nbstar: 5,
    nbReview: 200,
    price: 500.0,
    isFavorite: true,
    location: "Djerba, Tunisia",
    description: "Relax and unwind at the luxurious Djerba Oasis Escape.",
    reviews: reviews,
  ),
  PlaceModel(
    id: 2,
    name: "Ancient Carthage Exploration",
    image: "assets/images/Ancient Carthage Exploration.webp",
    travel: travelList[3],
    duration: "1 Day",
    nbstar: 4,
    nbReview: 250,
    price: 50.0,
    isFavorite: true,
    location: "Carthage, Tunisia",
    description: "Discover the rich history and culture of Ancient Carthage.",
    reviews: reviews,
  ),
  PlaceModel(
    id: 3,
    name: "Majestic Great Wall Adventure",
    image: "assets/images/Majestic Great Wall Adventure.jpg",
    travel: travelList[1],
    duration: "2 Days",
    nbstar: 5,
    nbReview: 1000,
    price: 300.0,
    isFavorite: true,
    location: "China",
    description: "Explore one of the greatest wonders of the world.",
    reviews: reviews,
  ),
  PlaceModel(
    id: 4,
    name: "Roman Colosseum Marvel",
    image: "assets/images/Roman Colosseum Marvel.jpg",
    travel: travelList[3],
    duration: "1 Day",
    nbstar: 5,
    nbReview: 1500,
    price: 100.0,
    isFavorite: true,
    location: "Rome, Italy",
    description:
        "Visit the historic Roman Colosseum and experience ancient history.",
    reviews: reviews,
  ),
  PlaceModel(
    id: 5,
    name: "Serengeti Safari Expedition",
    image: "assets/images/Serengeti Safari Expedition.jpg",
    travel: travelList[7],
    duration: "5 Days",
    nbstar: 5,
    nbReview: 500,
    price: 1200.0,
    isFavorite: true,
    location: "Tanzania",
    description:
        "Experience an unforgettable wildlife safari in the Serengeti.",
    reviews: reviews,
  ),
  PlaceModel(
    id: 6,
    name: "Santorini Sunset Serenity",
    image: "assets/images/Santorini Sunset Serenity.jpg",
    travel: travelList[6],
    duration: "3 Days",
    nbstar: 5,
    nbReview: 700,
    price: 800.0,
    isFavorite: true,
    location: "Greece",
    description:
        "Enjoy the beautiful views and white-washed buildings of Santorini.",
    reviews: reviews,
  ),
  PlaceModel(
    id: 7,
    name: "Machu Picchu Incan Mysteries",
    image: "assets/images/Machu Picchu Incan Mysteries.jpg",
    travel: travelList[1],
    duration: "4 Days",
    nbstar: 5,
    nbReview: 900,
    price: 900.0,
    isFavorite: true,
    location: "Peru",
    description: "Hike to the ancient Incan city of Machu Picchu.",
    reviews: reviews,
  ),
  PlaceModel(
    id: 8,
    name: "Grand Canyon Wonders",
    image: "assets/images/Grand Canyon Wonders.jpg",
    travel: travelList[5],
    duration: "3 Days",
    nbstar: 5,
    nbReview: 800,
    price: 400.0,
    isFavorite: true,
    location: "Arizona, USA",
    description: "Witness the breathtaking views of the Grand Canyon.",
    reviews: reviews,
  ),
];
