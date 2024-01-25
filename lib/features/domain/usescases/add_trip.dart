import 'package:travel_app/features/domain/entities/trip.dart';
import 'package:travel_app/features/domain/repositories/trip_repository.dart';

class AddTrip {
  final TripRepository repository;

  AddTrip({required this.repository});

 Future<void> call(Trip trip) {
    return repository.addTrip(trip);
  }
}