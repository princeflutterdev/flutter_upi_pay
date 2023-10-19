import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_upi_india');
  handler(MethodCall methodCall) async {
    return '42';
  }

  TestWidgetsFlutterBinding.ensureInitialized();

  TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
      .setMockMethodCallHandler(channel, handler);

  // setUp(() {
  //   channel.setMockMethodCallHandler();
  // });

  // tearDown(() {
  //   channel.setMockMethodCallHandler(null);
  // });

  test('getPlatformVersion', () async {
    print('Dummy Test');
  });
}
