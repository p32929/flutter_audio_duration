//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <audio_duration/audio_duration_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) audio_duration_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "AudioDurationPlugin");
  audio_duration_plugin_register_with_registrar(audio_duration_registrar);
}
