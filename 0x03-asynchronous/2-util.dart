// 2-util.dart
Future<String> fetchUser() =>
    // Simulate an error being thrown after a delay
    Future.delayed(
      const Duration(seconds: 2),
      () => throw 'Cannot locate user',
    );