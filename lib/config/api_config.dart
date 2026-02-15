class ApiConfig {
  // Base URL - change based on environment
  static const String baseUrl = 'https://api.highwaybhau.com';
  // For local testing: 'http://10.0.2.2:8000' (Android Emulator)
  
  static const String apiVersion = 'v1';
  
  // Endpoints
  static const String nearbyPlacesEndpoint = '/api/$apiVersion/nearby-places';
  static const String placeDetailsEndpoint = '/api/$apiVersion/place';
  
  // Timeouts
  static const Duration connectTimeout = Duration(seconds: 10);
  static const Duration receiveTimeout = Duration(seconds: 15);
  
  // Cache settings
  static const Duration cacheValidDuration = Duration(minutes: 10);
  
  // Search parameters
  static const double maxSearchRadiusKm = 50.0;
  static const double minSearchRadiusKm = 5.0;
  static const double directionalConeAngle = 45.0;
}