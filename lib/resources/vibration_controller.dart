import 'package:vibration/vibration.dart';

void vibration() async {
  await Vibration.vibrate(duration: 50);
  print('Phone Vibrated');
}
