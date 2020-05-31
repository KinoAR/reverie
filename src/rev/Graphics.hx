package rev;
import kha.graphics2.Graphics;

class Graphics extends Drawable {

  public function new(g2:kha.graphics2.Graphics, ?parent:Object) {
    super(g2, parent);
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