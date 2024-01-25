import 'package:travel_app/features/domain/entities/trip.dart';
import 'package:travel_app/features/domain/repositories/abstract_trip_repository.dart';

class GetTrips {
  final AbstractTripRepository repository;

  GetTrips({required this.repository});

 Future<List<Trip>> call() {
    return repository.getTrips();
  }
}