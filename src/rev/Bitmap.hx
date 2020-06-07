package rev;

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

  public function new(rc:RenderContext, ?parent:Object) {
   super(rc, parent); 
  }


  public function pushOpacity(opacity:Float) {
    this.rc.pushOpacity(opacity);
  }

  public function popOpacity() : Float {
    return this.rc.popOpacity();
  }

  public function scale(scale:V2) {
    this.rc.scale(scale);
  }

  public function setOpacity(opacity:Float) {
    this.rc.setOpacity(opacity);
  }

  public function drawRect(v2:V2, width:Float, height:Float, strength:Float=1.0) {
    this.rc.drawRect(v2, width, height, strength);
  }

  public function fillRect(v2:V2, width:Float, height:Float) {
    this.rc.fillRect(v2, width, height);
  }

  public function drawText(text:String, v2:V2) {
    this.rc.drawText(text, v2);
  }

  public function drawCharacters(text:Array<Int>, start:Int, length:Int, position:V2) {
    this.rc.drawCharacters(text, start, length, position);
  }

  public function drawLine(vec1:V2, vec2:V2, ?strength:Float) {
    this.rc.drawLine(vec1, vec2, strength);
  }

  public function drawImage(img:Image, position:V2) {
    this.rc.drawImage(img, position);
  }

  public function drawSubImage(img:Image, position:V2, sx:Float, sy:Float, sw:Float, sh:Float) {
    this.rc.drawSubImage(img, position, sx, sy, sw, sh);
  }

  public function drawScaledSubImage(img:Image, sx: FastFloat, sy: FastFloat, sw: FastFloat, sh: FastFloat, dx: FastFloat, dy: FastFloat, dw: FastFloat, dh: FastFloat) {
    this.rc.drawScaledSubImage(img, sx, sy, sw, sh, dx, dy, dw, dh);
  }

  public function fillTriangle(point1:V2, point2:V2, point3:V2) {
    this.rc.fillTriangle(point1, point2, point3);
  }

  public function scissor(position:V2, width:Int, height:Int) {
    this.rc.scissor(position, width, height);
  }
}