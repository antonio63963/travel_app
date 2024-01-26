import 'package:travel_app/features/domain/entities/trip.dart';
import 'package:travel_app/features/domain/repositories/abstract_trip_repository.dart';

class DeleteTrip {
  final AbstractTripRepository repository;

  DeleteTrip({required this.repository});

 Future<void> call(int tripId) {
    return repository.deleteTrip(tripId);
  }
}