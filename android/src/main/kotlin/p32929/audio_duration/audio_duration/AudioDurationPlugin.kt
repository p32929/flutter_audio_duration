package p32929.audio_duration.audio_duration

import android.media.MediaMetadataRetriever
import android.net.Uri
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** AudioDurationPlugin */
class AudioDurationPlugin: FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannel

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "audio_duration")
    channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    if (call.method == "getPlatformVersion") {
      result.success("Android ${android.os.Build.VERSION.RELEASE}")
    } 
    
    else if (call.method == "getAudioDuration") {
      val uri: Uri = Uri.parse(call.argument("path"))
      val mmr = MediaMetadataRetriever()
      mmr.setDataSource(uri.path)
      val durationStr: String? = mmr.extractMetadata(MediaMetadataRetriever.METADATA_KEY_DURATION)
      val millisecond: Int = durationStr?.toInt() ?: 0
      result.success(millisecond)
    }
    
    else {
      result.notImplemented()
    }
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}
