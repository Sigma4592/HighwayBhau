import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:highwaybhau/main.dart';

void main() {
  testWidgets('App launches successfully', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    
    expect(find.text('HighwayBhau'), findsOneWidget);
    expect(find.byIcon(Icons.directions_car), findsWidgets);
  });
  
  testWidgets('Home page displays features', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    
    expect(find.text('GPS Tracking'), findsOneWidget);
    expect(find.text('Find Places'), findsOneWidget);
    expect(find.text('Smart Alerts'), findsOneWidget);
    expect(find.text('Navigation'), findsOneWidget);
  });
}