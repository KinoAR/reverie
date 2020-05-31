package rev;
import kha.graphics2.Graphics;
import kha.Color;

class Drawable {

  public var x:Float;
  public var y:Float;
  public var g2: Graphics;
  public var color:Int;

  public function new(g2:Graphics, ?parent:Object) {
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

  public function drawRect(x:Float, y:Float, width:Float, height:Float, ?strength:Float) {
    g2.drawRect(x, y, width, height, strength);
    return this;
  }

  public function fillRect(x:Float, y:Float, width:Float, height:Float ) {
    g2.fillRect(x, y, width, height);
    return this;
  }

  public function drawLine(x1:Float, y1:Float, x2:Float, y2:Float, ?strength:Float) {
    g2.drawLine(x1, y1, x2, y2, strength);
    return this;
  }


}