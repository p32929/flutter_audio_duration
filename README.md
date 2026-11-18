# audio_duration

A tiny Flutter plugin that tells you how long an audio file is, in milliseconds. You don't need to load a player, start playback or wait for a listener: one call returns the length of an mp3 (or any other file Android can read).

On pub.dev: **[audio_duration](https://pub.dev/packages/audio_duration)**

[![pub version](https://badgen.net/pub/v/audio_duration)](https://pub.dev/packages/audio_duration)

> **Android only.** On other platforms the call is not implemented.

## Features

1. **One line of code** to get a file's duration.
2. **No playback needed,** so it is fast and silent. It reads the duration from the file's own information, using Android's `MediaMetadataRetriever`.
3. **Works with mp3 and the other formats Android supports.**

## Install

Add it to your `pubspec.yaml`:

```yaml
dependencies:
  audio_duration: ^0.0.3
```

Then run `flutter pub get`.

## How to use

```dart
import 'package:audio_duration/audio_duration.dart';

final int? durationInMilliseconds =
    await AudioDuration.getAudioDuration('/path/to/the/file.mp3');
```

Pass the full path to a file on the device. If the file has no duration information, you get `0`.

## Why I made it

I needed the length of audio files in a personal Android app and couldn't find a simple package that only did that, so I wrote one. It supports Android only, because I didn't have a Mac or an iOS device to build the iOS part.

## License

MIT License — Copyright (c) 2020 Fayaz Bin Salam. See [LICENSE](LICENSE) for the full text.

## Contributing

Contributions are very welcome, thank you! Before you start on a pull request, please open an issue and tell me what you would like to add or change. That way we can agree on it first, and your time is not wasted on something that might not fit. Thanks for helping make audio_duration better.

## You might also like

<p><a href="https://openstore.pfay.workers.dev/more/p32929/flutter_audio_duration/personal/0"><picture><source media="(prefers-color-scheme: dark)" srcset="https://openstore.pfay.workers.dev/more/p32929/flutter_audio_duration/personal/0-dark.svg"><img src="https://openstore.pfay.workers.dev/more/p32929/flutter_audio_duration/personal/0-light.svg" width="50%" align="top" alt="More apps by p32929 on OpenStore (1)"></picture></a><a href="https://openstore.pfay.workers.dev/more/p32929/flutter_audio_duration/personal/1"><picture><source media="(prefers-color-scheme: dark)" srcset="https://openstore.pfay.workers.dev/more/p32929/flutter_audio_duration/personal/1-dark.svg"><img src="https://openstore.pfay.workers.dev/more/p32929/flutter_audio_duration/personal/1-light.svg" width="50%" align="top" alt="More apps by p32929 on OpenStore (2)"></picture></a><br><a href="https://openstore.pfay.workers.dev/more/p32929/flutter_audio_duration/personal/2"><picture><source media="(prefers-color-scheme: dark)" srcset="https://openstore.pfay.workers.dev/more/p32929/flutter_audio_duration/personal/2-dark.svg"><img src="https://openstore.pfay.workers.dev/more/p32929/flutter_audio_duration/personal/2-light.svg" width="50%" align="top" alt="More apps by p32929 on OpenStore (3)"></picture></a><a href="https://openstore.pfay.workers.dev/more/p32929/flutter_audio_duration/personal/3"><picture><source media="(prefers-color-scheme: dark)" srcset="https://openstore.pfay.workers.dev/more/p32929/flutter_audio_duration/personal/3-dark.svg"><img src="https://openstore.pfay.workers.dev/more/p32929/flutter_audio_duration/personal/3-light.svg" width="50%" align="top" alt="More apps by p32929 on OpenStore (4)"></picture></a></p>

<p><a href="https://p32929.github.io/share/?repo=flutter_audio_duration"><picture><source media="(prefers-color-scheme: dark)" srcset="https://p32929.github.io/readme/footer-share-dark.svg"><img src="https://p32929.github.io/readme/footer-share-light.svg" width="50%" align="top" alt="Share this project with your friends in one click"></picture></a><a href="https://p32929.github.io/support/"><picture><source media="(prefers-color-scheme: dark)" srcset="https://p32929.github.io/readme/footer-support-dark.svg"><img src="https://p32929.github.io/readme/footer-support-light.svg" width="50%" align="top" alt="If you like my work and want to support me, feel free to support"></picture></a><br><a href="https://openstore.pfay.workers.dev/add"><picture><source media="(prefers-color-scheme: dark)" srcset="https://p32929.github.io/readme/footer-join-dark.svg"><img src="https://p32929.github.io/readme/footer-join-light.svg" width="100%" align="top" alt="Put your own apps on OpenStore: free, your listing lives in your own repo"></picture></a></p>
