import 'package:flutter_test/flutter_test.dart';
import 'package:luppa_app/main.dart';

void main() {
  testWidgets('App Starts', (WidgetTester tester) async {
    await tester.pumpWidget(
      const SmoothApp(),
    );
    expect(find.byType(SmoothApp), findsOneWidget);
  });
}
