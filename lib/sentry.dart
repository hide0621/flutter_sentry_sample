import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> sampleSentryError() async {
  try {
    aMethodThatMightFail();
  } catch (exception, stackTrace) {
    await Sentry.captureException(
      exception,
      stackTrace: stackTrace,
    );
  }
}

void aMethodThatMightFail() {
  throw Exception('This is an error');
}
