//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"

#if __has_include(<ir_sensor_plugin/IrSensorPlugin.h>)
#import <ir_sensor_plugin/IrSensorPlugin.h>
#else
@import ir_sensor_plugin;
#endif

#if __has_include(<open_settings/OpenSettingsPlugin.h>)
#import <open_settings/OpenSettingsPlugin.h>
#else
@import open_settings;
#endif

#if __has_include(<vibration/VibrationPlugin.h>)
#import <vibration/VibrationPlugin.h>
#else
@import vibration;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [IrSensorPlugin registerWithRegistrar:[registry registrarForPlugin:@"IrSensorPlugin"]];
  [OpenSettingsPlugin registerWithRegistrar:[registry registrarForPlugin:@"OpenSettingsPlugin"]];
  [VibrationPlugin registerWithRegistrar:[registry registrarForPlugin:@"VibrationPlugin"]];
}

@end
