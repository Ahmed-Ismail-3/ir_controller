import 'package:ir_sensor_plugin/ir_sensor_plugin.dart';
import 'package:ir_controller/resources/vibration_controller.dart';

void irTransmitter({List<int> transmitListInt}) async {
  vibration();
  final String result =
      await IrSensorPlugin.transmitListInt(list: transmitListInt);
  print('Transmitted completed : $result');
  print('Transmitted code : $transmitListInt');
}
