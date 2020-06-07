package rev;
import math.V2;
import kha.graphics2.Graphics;

class Graphics extends Drawable {

  public function new(rc:RenderContext, ?parent:Object) {
    super(rc, parent);
  }

  public function drawRect(position:V2, width:Float, height:Float, ?strength:Float) {
    rc.drawRect(position, width, height, strength);
    return this;
  }

  public function fillRect(position:V2, width:Float, height:Float ) {
    rc.fillRect(position, width, height);
    return this;
  }

  public function drawLine(pos1:V2, pos2:V2, ?strength:Float) {
    rc.drawLine(pos1, pos2, strength);
    return this;
  }
}