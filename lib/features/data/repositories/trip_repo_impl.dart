import 'package:travel_app/features/data/datasources/trip_local_datasource.dart';
import 'package:travel_app/features/data/models/trip_model.dart';
import 'package:travel_app/features/domain/entities/trip.dart';
import 'package:travel_app/features/domain/repositories/abstract_trip_repository.dart';

class TripRepositoryImpl implements AbstractTripRepository {
  final TripLocalDataSource localDataSource;

  TripRepositoryImpl({required this.localDataSource});


  @override
  Future<void> addTrip(Trip trip) async {
    final tripModel = TripModel.fromEntity(trip);
    localDataSource.addTrip(tripModel);
    
  }

  @override
  Future<void> deleteTrip(int index) async {
    localDataSource.deleteTrip(index);
  }

  @override
  Future<List<Trip>> getTrips() async {
    final tripModels = localDataSource.getTrips();
    return tripModels.map((model) => model.toEntity()).toList();
  }

}