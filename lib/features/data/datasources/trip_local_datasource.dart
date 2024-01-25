import 'package:hive_flutter/adapters.dart';
import 'package:travel_app/features/data/models/trip_model.dart';

class TripLocalDataSource {
  final Box<TripModel> tripBox;

  TripLocalDataSource({required this.tripBox});

  List<TripModel> getTrips() {
    return tripBox.values.toList();
  }
  
  void addTrip(TripModel trip) {
    tripBox.add(trip);
  }

  void deleteTrip(int index) {
    tripBox.delete(index);
  }
}