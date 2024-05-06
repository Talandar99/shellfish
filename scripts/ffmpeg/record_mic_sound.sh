#!/bin/bash

# ffmpeg: This is the command-line tool for handling multimedia processing tasks.

# -f pulse: Specifies the input format as PulseAudio, which is a sound server
# used in many Linux distributions.

# -i alsa_input.usb-MICE_MICROPHONE_USB_MICROPHONE_201308-00.mono-fallback:
# Specifies the input audio source. In this case, it seems to be an ALSA
# (Advanced Linux Sound Architecture) input device with a specific name
# (usb-MICE_MICROPHONE_USB_MICROPHONE_201308-00.mono-fallback). ALSA is a
# framework used in Linux for managing sound devices.

# -acodec pcm_s16le: Sets the audio codec to PCM (Pulse Code Modulation) with a
# 16-bit little-endian sample format. PCM is a standard uncompressed audio
# format.

# -ar 44100: Sets the audio sample rate to 44.1 kHz. This is a common sample
# rate used in audio recording. 

# -ac 2: Specifies the number of audio channels.
# In this case, it is set to 2, indicating stereo audio. 

# -y: Overwrites the output file if it already exists without asking for
# confirmation. output.wav: Specifies the output file name as "output.wav", and
# it will be a WAV file.
ffmpeg -f pulse -i alsa_input.usb-MICE_MICROPHONE_USB_MICROPHONE_201308-00.mono-fallback -acodec pcm_s16le -ar 44100 -ac 2 -y output.wav
