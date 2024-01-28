#include "include/audio_duration/audio_duration_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "audio_duration_plugin.h"

void AudioDurationPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  audio_duration::AudioDurationPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
