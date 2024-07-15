import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_favorite_place_app/models/place.dart';

class UserPlacesNotifier extends StateNotifier<List<PlaceModel>> {
  UserPlacesNotifier() : super(const []);

  void addPlace(String title, File image, PlaceLocationModel location) {
    final newPlace = PlaceModel(title: title, image: image, location: location);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider =
    StateNotifierProvider<UserPlacesNotifier, List<PlaceModel>>(
        (ref) => UserPlacesNotifier());
