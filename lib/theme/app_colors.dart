import 'package:flutter/material.dart';

class AppColors {
  // Primary colors
  static const Color primary = Color(0xFF2196F3);
  static const Color primaryDark = Color(0xFF1976D2);
  static const Color primaryLight = Color(0xFF64B5F6);
  
  // Accent
  static const Color accent = Color(0xFFFF9800);
  
  // Category colors
  static const Color fuel = Color(0xFFE53935);
  static const Color food = Color(0xFFFF9800);
  static const Color rest = Color(0xFF42A5F5);
  static const Color hotel = Color(0xFF9C27B0);
  static const Color attraction = Color(0xFF66BB6A);
  
  // Status
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFFC107);
  static const Color error = Color(0xFFF44336);
  
  // Neutral
  static const Color background = Color(0xFFF5F5F5);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color textPrimary = Color(0xFF212121);
  static const Color textSecondary = Color(0xFF757575);
  
  // Get color for category
  static Color getCategoryColor(String category) {
    switch (category.toLowerCase()) {
      case 'fuel':
        return fuel;
      case 'food':
        return food;
      case 'rest':
        return rest;
      case 'hotel':
        return hotel;
      case 'attraction':
        return attraction;
      default:
        return primary;
    }
  }
}