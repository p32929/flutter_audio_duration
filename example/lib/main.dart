import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:audio_duration/audio_duration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _audioDurations = '...';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_audioDurations),
                ElevatedButton(
                    onPressed: () async {
                      FilePickerResult? result =
                          await FilePicker.platform.pickFiles(
                        allowMultiple: true,
                        type: FileType.audio,
                      );

                      if (result != null) {
                        List<File> files =
                            result.paths.map((path) => File(path!)).toList();
                        List<String> urls = files.map((e) {
                          String path = e.uri.toFilePath();
                          return path;
                        }).toList();
                        urls.sort((a, b) => a.compareTo(b));

                        var finalText = "";
                        for (var i = 0; i < urls.length; i++) {
                          var duration =
                              await AudioDuration.getAudioDuration(urls[i]);
                          finalText += "${urls[i]} - ${duration!}\n";
                        }

                        setState(() {
                          _audioDurations = finalText;
                        });
                      }
                    },
                    child: const Text("Pick files"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
