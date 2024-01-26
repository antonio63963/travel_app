import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_app/features/presentation/providers/trip_provider.dart';

class MyTripsScreen extends ConsumerWidget {
  const MyTripsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tripsList = ref.read(tripListNotifierProvider);
    debugPrint('TripsList in Widget: ${tripsList.toString()}');
    
    return ListView.builder(itemCount: tripsList.length, itemBuilder: (_, idx) {
      final trip = tripsList[idx];
      return Text(trip.title);
    });
  }
}
