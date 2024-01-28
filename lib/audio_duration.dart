import 'audio_duration_platform_interface.dart';

class AudioDuration {
  Future<String?> getPlatformVersion() {
    return AudioDurationPlatform.instance.getPlatformVersion();
  }

  Future<int?> getAudioDuration(String path) {
    return AudioDurationPlatform.instance.getAudioDuration(path);
  }
}
