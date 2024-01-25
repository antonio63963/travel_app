import 'package:travel_app/features/domain/entities/trip.dart';
import 'package:travel_app/features/domain/repositories/trip_repository.dart';

class GetTrips {
  final TripRepository repository;

  GetTrips({required this.repository});

 Future<List<Trip>> call() {
    return repository.getTrips();
  }
}