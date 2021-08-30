import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_mlkit_pose/flutter_mlkit_pose.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_mlkit_pose');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterMlkitPose.platformVersion, '42');
  });
}
