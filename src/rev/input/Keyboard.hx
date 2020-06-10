package rev.input;

import kha.input.KeyCode;
import kha.input.Keyboard;
using Lambda;

typedef KKB = kha.input.Keyboard;
typedef Key = kha.input.KeyCode;

class Keyboard {

  public static var keyDown:List<Key> = new List<Key>();
  public static var keyUp:List<Key> = new List<Key>();
  public static var pressed:List<String> = new List<String>();

  public static function initialize() {
    KKB.get().notify(onKeyDown, onKeyUp, onPress);
  }

  private static function onKeyDown(key:Key ):Void  {
    keyDown.add(key);
    trace('Key down ${key}');
  }

  private static function onKeyUp(key:Key):Void {
    keyUp.add(key);
    trace('Key up: ${key}');
  }

  private static function onPress(char:String) {
    pressed.add(char);
    trace('Pressed : ${char}');
  }

  public static function isKeyDown(key:Key) {
    return keyDown.exists((element) -> element == key);
  }

  public static function isKeyUp(key:Key) {
    return keyUp.exists((element) -> element == key);
  }

  public static function isPressed(char:String) {
    return pressed.exists((element) -> element == char);
  }

  public static function resetInputs() {
    keyDown.clear();
    keyUp.clear();
    pressed.clear();
  }
}