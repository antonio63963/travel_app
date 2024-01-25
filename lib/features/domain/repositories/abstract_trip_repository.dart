import 'package:travel_app/features/domain/entities/trip.dart';

abstract class AbstractTripRepository {
  Future<List<Trip>> getTrips();
  Future<void> addTrip(Trip trip);
  Future<void> deleteTrip(int id);
}
