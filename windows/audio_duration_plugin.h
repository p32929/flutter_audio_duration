#ifndef FLUTTER_PLUGIN_AUDIO_DURATION_PLUGIN_H_
#define FLUTTER_PLUGIN_AUDIO_DURATION_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace audio_duration {

class AudioDurationPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  AudioDurationPlugin();

  virtual ~AudioDurationPlugin();

  // Disallow copy and assign.
  AudioDurationPlugin(const AudioDurationPlugin&) = delete;
  AudioDurationPlugin& operator=(const AudioDurationPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace audio_duration

#endif  // FLUTTER_PLUGIN_AUDIO_DURATION_PLUGIN_H_
