import 'package:geolocator/geolocator.dart';

class LocationData {
  final double latitude;
  final double longitude;
  final double speed;        // m/s
  final double heading;      // 0-360°
  final double accuracy;     // meters
  final DateTime timestamp;

  LocationData({
    required this.latitude,
    required this.longitude,
    required this.speed,
    required this.heading,
    required this.accuracy,
    required this.timestamp,
  });

  factory LocationData.fromPosition(Position position) {
    return LocationData(
      latitude: position.latitude,
      longitude: position.longitude,
      speed: position.speed,
      heading: position.heading,
      accuracy: position.accuracy,
      timestamp: position.timestamp ?? DateTime.now(),
    );
  }

  double get speedKmh => speed * 3.6; // Convert m/s to km/h

  @override
  String toString() {
    return 'LocationData(lat: $latitude, lng: $longitude, speed: ${speedKmh.toStringAsFixed(1)} km/h)';
  }
}