package rev.input;
import kha.input.Mouse;
import rev.input.MouseBtn;

typedef KMS = kha.input.Mouse;

class Mouse {
  
  public static function initialize() {
    KMS.get().notify(downListener, upListener, moveListener, 
      wheelListener, leaveListener);
  }

  private static function downListener(button:MouseBtn, x:Int, y:Int) {
    var buttonName:String = button;
    switch(button) {
      case MouseBtn.Left:
        trace('Clicked :${buttonName}');
      case MouseBtn.Right:
        trace('Clicked :${buttonName}');
      case MouseBtn.Middle:
        trace('Clicked :${buttonName}');
    }
  }

  private static function upListener(button:MouseBtn, x:Int, y:Int ) {

  }

  private static function moveListener(x:Int, y:Int, moveX:Int, moveY:Int) {

  }

  /**
   * Listens for mouse wheel events.
   * @param delta Can have value of 1 or - 1 based on rotation.
   */
  private static function wheelListener(delta:Int) {

  }

  private static function leaveListener() {

  }
}