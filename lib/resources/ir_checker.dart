import 'package:ir_sensor_plugin/ir_sensor_plugin.dart';
import 'package:ir_controller/resources/alert_builder.dart';

void irChecker(context) async {
  final bool hasIrEmitter = await IrSensorPlugin.hasIrEmitter;
  if (hasIrEmitter == true) {
    final String getCarrierFrequencies =
        await IrSensorPlugin.getCarrierFrequencies;
    print(
        'device has ir blaster and support the following freq: $getCarrierFrequencies');
    final String setFeqResult = await IrSensorPlugin.setFrequencies(38190);
    print('set freq: $setFeqResult');
  } else {
    print('something wrong happened or your device doesn\'t support the ir');
    buildAlert(context).show();
  }
}
