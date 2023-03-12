# VJ Softwares

Homebrew taps for VJ related macOS softwares.

## Taps

- `vdmx` 
  - [VDMX5](https://vdmx.vidvox.net) - Professional VJ Software.
- `vezer`
  - [Vezer](https://imimot.com/vezer/) - Timeline based MIDI/OSC/DMX sequencer for audiovisual artists.
- `mitti` 
  - [Mitti](https://imimot.com/mitti/) - Video Playback Software for live events and exhibitions.
- `lumen-synth`
  - [Lumen](https://lumen-app.com) - Analog-Style Software Video Synthesizer.
- `syphon-simple` 
  - [Syphon Simple](https://github.com/Syphon/Simple) - Realtime live video sharing applications.

## How to use

`brew install sisoe24/vj/vdmx`

Or `brew tap sisoe24/vj` and then `brew install vdmx`.

## Notes

- When installing `vdmx`, the tap automatically installs the Extra content inside
the dmg folder and places the applications inside **/Applications/VDMX Extras**.
However, it will not install the ISFEditor due to an error.

## Why a third-party tap

VDMX, for example, was already added long ago and removed due to inactivity, 
so it is unlikely they will accept it again. Other apps in this repo are unlikely
to have many more users than VDMX to make any difference.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

## Contributing

Feel free to add a tap for an app you use or suggest a new one. You can also contribute by only incrementing the application versions when a new update is out.
