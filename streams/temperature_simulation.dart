import 'dart:async';
import 'dart:math';

Future<int> fetchCurrentTemperature() {
  return Future.delayed(Duration(seconds: 1), () {
    final random = Random();
    return random.nextInt(51) - 10;
  });
}

Stream<int> streamTemperatureUpdates() {
  return Stream.periodic(Duration(seconds: 1), (_) {
    final random = Random();
    return random.nextInt(51) - 10;
  }).take(10);
}

void main() async {
  print('Fetching current temperature...');
  final currentTemperature = await fetchCurrentTemperature();
  print('Current temperature: $currentTemperature°C');

  final temperatureStream = streamTemperatureUpdates();
  final subscription = temperatureStream.listen((temperature) {
    print('Temperature update: $temperature°C');
  });

  await subscription.asFuture();
  print('Temperature monitoring stopped.');
}

/*
### OUTPUT ###
Fetching current temperature...
Current temperature: 15°C
Temperature update: 0°C
Temperature update: 19°C
Temperature update: 39°C
Temperature update: 18°C
Temperature update: 28°C
Temperature update: 24°C
Temperature update: 19°C
Temperature update: 0°C
Temperature update: 2°C
Temperature update: 29°C
Temperature monitoring stopped.
*/
