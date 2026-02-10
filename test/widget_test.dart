import 'package:flutter_test/flutter_test.dart';
import 'package:vpn/main.dart';

void main() {
  testWidgets('VPN app loads', (WidgetTester tester) async {
    await tester.pumpWidget(const VPNApp());
    expect(find.text('VPN App'), findsOneWidget);
  });
}
