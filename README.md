# audio_duration

Just a simple flutter package to get the duration of any audio file ( like: mp3 ) in milliseconds

## How to use
```
import 'package:audio_duration/audio_duration.dart';
//
var filePathString = "./path/to/the/file.mp3"
var durationInMilliSeconds = await AudioDuration.getAudioDuration(filePathString);
```

## Motivation
I needed a package for a personal android app that can get the audio duration. But I couldn't find any package that can do it ( may be I haven't searched enough, who knows? )
So, I created this package...

For now, it only supports Android. I also dont have a Mac or an iOS device, so those are out of question for now :/ 

But pull requests are welcome. But please do create an issue before making any pull requests. Thanks

## License
```
MIT License

Copyright (c) 2020 Fayaz Bin Salam

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

```