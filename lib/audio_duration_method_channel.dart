import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'audio_duration_platform_interface.dart';

/// An implementation of [AudioDurationPlatform] that uses method channels.
class MethodChannelAudioDuration extends AudioDurationPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('audio_duration');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<int?> getAudioDuration(String path) async {
    var duration = await methodChannel.invokeMethod<int>('getAudioDuration', {
      "path": path,
    });
    return duration;
  }
}
