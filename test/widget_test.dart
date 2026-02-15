import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:highwaybhau/main.dart';

void main() {
  testWidgets('App launches successfully', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    
    expect(find.text('HighwayBhau'), findsWidgets);
    expect(find.byIcon(Icons.directions_car), findsWidgets);
    expect(find.text('Your Highway Co-Traveller'), findsOneWidget);
  });
  
  testWidgets('AppBar displays correctly', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    
    expect(find.byType(AppBar), findsOneWidget);
    
    final appBar = find.byType(AppBar);
    expect(
      find.descendant(
        of: appBar,
        matching: find.text('HighwayBhau'),
      ),
      findsOneWidget,
    );
  });
  
  testWidgets('Home page displays all features', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    await tester.pumpAndSettle();
    
    expect(find.text('GPS Tracking'), findsOneWidget);
    expect(find.text('Find Places'), findsOneWidget);
    expect(find.text('Smart Alerts'), findsOneWidget);
    expect(find.text('Navigation'), findsOneWidget);
  });
  
  testWidgets('Start Journey button is present and tappable', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    await tester.pumpAndSettle();
    
    // Find button
    final buttonFinder = find.text('Start Journey');
    expect(buttonFinder, findsOneWidget);
    
    // Verify it's an ElevatedButton
    final elevatedButton = find.ancestor(
      of: buttonFinder,
      matching: find.byType(ElevatedButton),
    );
    expect(elevatedButton, findsOneWidget);
    
    // Verify button is enabled
    final button = tester.widget<ElevatedButton>(elevatedButton);
    expect(button.onPressed, isNotNull);
    
    // Tap button (should not throw error)
    await tester.tap(buttonFinder);
    await tester.pump();
    
    // Success if no exception thrown
  });
testWidgets('Start Journey button is present and tappable', (WidgetTester tester) async {
  await tester.pumpWidget(MyApp());
  await tester.pumpAndSettle();
  
  // Scroll to make button visible
  final scrollable = find.byType(SingleChildScrollView);
  await tester.dragUntilVisible(
    find.text('Start Journey'),
    scrollable,
    Offset(0, 50),
  );
  
  // Now tap (button is visible)
  await tester.tap(find.text('Start Journey'), warnIfMissed: false);
  await tester.pump();
});
  
  testWidgets('Page is scrollable', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    await tester.pumpAndSettle();
    
    expect(find.byType(SingleChildScrollView), findsOneWidget);
    
    // Test scroll functionality
    final scrollable = find.byType(SingleChildScrollView);
    await tester.drag(scrollable, Offset(0, -100));
    await tester.pumpAndSettle();
  });
  
  testWidgets('All icons are displayed', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    await tester.pumpAndSettle();
    
    // Feature icons
    expect(find.byIcon(Icons.location_on), findsOneWidget);
    expect(find.byIcon(Icons.restaurant), findsOneWidget);
    expect(find.byIcon(Icons.notifications), findsOneWidget);
    expect(find.byIcon(Icons.navigation), findsOneWidget);
    
    // Button icon
    expect(find.byIcon(Icons.play_arrow), findsOneWidget);
  });
}