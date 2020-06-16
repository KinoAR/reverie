package rev.audio;

import kha.Sound;
import kha.audio1.Audio;
import kha.audio1.AudioChannel;

typedef KAudio = kha.audio1.Audio;
typedef KAudioChannel = kha.audio1.AudioChannel;
typedef KSound = kha.Sound;
typedef Sound = KSound;

class Audio {

  public static var audioChannel:KAudioChannel;
  public static var audioStreamChannel:KAudioChannel;
  public static var soundChannel:KAudioChannel;
  public static var soundStreamChannel:KAudioChannel;
  

  public static function initialize() {
  }

  public static function playSound(sound:Sound, loop:Bool=false) {
   soundChannel = KAudio.play(sound, loop); 
  }

  public static function playAudio(sound:Sound, loop:Bool=false) {
    audioChannel = KAudio.play(sound, loop);
  }

  public static function streamSound(sound:Sound, loop:Bool=false) {
    soundStreamChannel = KAudio.stream(sound, loop);
  }

  public static function streamAudio(sound:Sound, loop:Bool=false) {
    audioStreamChannel = KAudio.stream(sound, loop);
  } 

  public static function isSoundPlaying() {
    return soundChannel != null ? soundChannel.finished : false;
  }

  public static function isAudioPlaying() {
    return audioChannel != null ? audioChannel.finished : false;
  }

  public static function isSoundStreaming() {
    return soundStreamChannel != null ? soundStreamChannel.finished : false;
  }

  public static function isAudioStreaming() {
    return audioStreamChannel != null ? audioStreamChannel.finished : false;
  }
}