import 'package:favori_yerler/providers/user_places.dart';
import 'package:favori_yerler/screens/add_place.dart';
import 'package:favori_yerler/widgets/places_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlacesScreen extends ConsumerWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userPlaces = ref.watch(UserPlacesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Yerlerin..'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const AddPlaceScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(7.0),
        child: PlacesList(
          places: userPlaces,
        ),
      ),
    );
  }
}
