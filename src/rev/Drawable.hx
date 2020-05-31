package rev;
import kha.graphics2.Graphics;
import kha.Color;

class Drawable {

  public var x:Float;
  public var y:Float;
  public var g2: Graphics;
  public var color:Int;

  public function new(?parent:Object) {
    this.color = 0xFFFFFF;
  }


  /**
   *  Used for drawing things on the screen by batching all the draw
   *  calls to the render system.
   */
  public function draw() {

  }

  public function setColor(color:Int) {
    this.color = color;
  }

  public function resetColor() {
    this.color=0xFFFFFF;
  }
}