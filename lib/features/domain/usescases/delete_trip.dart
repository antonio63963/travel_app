import 'package:travel_app/features/domain/entities/trip.dart';
import 'package:travel_app/features/domain/repositories/trip_repository.dart';

class DeletTrip {
  final TripRepository repository;

  DeletTrip({required this.repository});

 Future<void> call(int tripId) {
    return repository.deleteTrip(tripId);
  }
}