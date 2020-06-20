package rev.core;
import rev.core.RenderContext;
import kha.FastFloat;
import kha.Image;
import math.V2;
import rev.utils.ColorUtils.Color;
/**
 * Simple drawble for displaying pixels on the screen. 
 * Used for drawing primitives.
 * Does not function as a container.
 */
class Bitmap extends Drawable {

  public function new(?parent:Object) {
   super(parent); 
  }

  public function drawRect(v2:V2, width:Float, height:Float, strength:Float=1.0) {
    this.begin();
    RenderContext.drawRect(v2.add(this.position), width, height, strength);
    this.end();
  }

  public function fillRect(v2:V2, width:Float, height:Float) {
    this.begin();
    RenderContext.fillRect(v2.add(this.position), width, height);
    this.end();
  }

  public function drawText(text:String, v2:V2) {
    this.begin();
    RenderContext.drawText(text, v2.add(this.position));
    this.end();
  }

  public function drawCharacters(text:Array<Int>, start:Int, length:Int, position:V2) {
    this.begin();
    RenderContext.drawCharacters(text, start, length, position.add(this.position));
    this.end();
  }

  public function drawLine(vec1:V2, vec2:V2, ?strength:Float) {
    this.begin();
    RenderContext.drawLine(vec1.add(this.position), vec2.add(this.position), strength);
    this.end();
  }

  public function drawImage(img:Image, position:V2) {
    this.begin();
    RenderContext.drawImage(img, position.add(this.position));
    this.end();
  }

  public function drawSubImage(img:Image, position:V2, sx:Float, sy:Float, sw:Float, sh:Float) {
    this.begin();
    RenderContext.drawSubImage(img, position.add(this.position), sx, sy, sw, sh);
    this.end();
  }

  public function drawScaledSubImage(img:Image, sx: FastFloat, sy: FastFloat, sw: FastFloat, sh: FastFloat, dx: FastFloat, dy: FastFloat, dw: FastFloat, dh: FastFloat) {
    this.begin();
    RenderContext.drawScaledSubImage(img, sx, sy, sw, sh, dx, dy, dw, dh);
    this.end();
  }

  public function fillTriangle(point1:V2, point2:V2, point3:V2) {
    this.begin();
    RenderContext.fillTriangle(point1.add(this.position), point2.add(this.position), point3.add(this.position));
    this.end();
  }

  public function scissor(position:V2, width:Int, height:Int) {
    this.begin();
    RenderContext.scissor(position.add(this.position), width, height);
    this.end();
  }
}