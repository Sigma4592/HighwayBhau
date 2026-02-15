import 'location_data.dart';

enum TravelMode {
  stationary,  // Speed < 5 km/h
  city,        // 5-40 km/h
  highway,     // > 40 km/h
}

class TravelState {
  final LocationData currentLocation;
  final double calculatedBearing;
  final TravelMode mode;
  final bool isMoving;
  final List<LocationData> recentLocations;

  TravelState({
    required this.currentLocation,
    required this.calculatedBearing,
    required this.mode,
    required this.isMoving,
    required this.recentLocations,
  });

  TravelState copyWith({
    LocationData? currentLocation,
    double? calculatedBearing,
    TravelMode? mode,
    bool? isMoving,
    List<LocationData>? recentLocations,
  }) {
    return TravelState(
      currentLocation: currentLocation ?? this.currentLocation,
      calculatedBearing: calculatedBearing ?? this.calculatedBearing,
      mode: mode ?? this.mode,
      isMoving: isMoving ?? this.isMoving,
      recentLocations: recentLocations ?? this.recentLocations,
    );
  }
}