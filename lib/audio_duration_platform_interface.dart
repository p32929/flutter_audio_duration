import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'audio_duration_method_channel.dart';

abstract class AudioDurationPlatform extends PlatformInterface {
  /// Constructs a AudioDurationPlatform.
  AudioDurationPlatform() : super(token: _token);

  static final Object _token = Object();

  static AudioDurationPlatform _instance = MethodChannelAudioDuration();

  /// The default instance of [AudioDurationPlatform] to use.
  ///
  /// Defaults to [MethodChannelAudioDuration].
  static AudioDurationPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AudioDurationPlatform] when
  /// they register themselves.
  static set instance(AudioDurationPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<int?> getAudioDuration(String path) {
    throw UnimplementedError('getAudioDuration() has not been implemented.');
  }
}
