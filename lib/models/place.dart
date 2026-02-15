enum PlaceCategory {
  food,
  fuel,
  rest,
  hotel,
  attraction;

  String get displayName {
    switch (this) {
      case PlaceCategory.food: return 'Food';
      case PlaceCategory.fuel: return 'Fuel';
      case PlaceCategory.rest: return 'Rest Stop';
      case PlaceCategory.hotel: return 'Hotel';
      case PlaceCategory.attraction: return 'Attraction';
    }
  }

  String get icon {
    switch (this) {
      case PlaceCategory.food: return '🍽️';
      case PlaceCategory.fuel: return '⛽';
      case PlaceCategory.rest: return '🚻';
      case PlaceCategory.hotel: return '🏨';
      case PlaceCategory.attraction: return '🏛️';
    }
  }
}

class Place {
  final String id;
  final String name;
  final PlaceCategory category;
  final double latitude;
  final double longitude;
  final double distanceKm;
  final int etaMinutes;

  Place({
    required this.id,
    required this.name,
    required this.category,
    required this.latitude,
    required this.longitude,
    required this.distanceKm,
    required this.etaMinutes,
  });

  String get distanceDisplay {
    if (distanceKm < 1) {
      return '${(distanceKm * 1000).toInt()} m';
    }
    return '${distanceKm.toStringAsFixed(1)} km';
  }

  String get etaDisplay {
    if (etaMinutes < 60) {
      return '$etaMinutes min';
    }
    final hours = etaMinutes ~/ 60;
    final mins = etaMinutes % 60;
    return '${hours}h ${mins}m';
  }
}