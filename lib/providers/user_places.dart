import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:favori_yerler/models/place.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>> {
  UserPlacesNotifier()
      : super(const []); //super ust sinifa erisim icin yaziliyor
  //riverpod'a bellekte duzenleme yapilamayacagindan const verildi final bellekte degisiklik yapar

  void addPlace(String title, File image, PlaceLocation location) {
    final newPlace = Place(title: title, image: image, location: location);
    state = [newPlace, ...state];
  }
}

final UserPlacesProvider =
    StateNotifierProvider<UserPlacesNotifier, List<Place>>(
  (ref) => UserPlacesNotifier(),
);
