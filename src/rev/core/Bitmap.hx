package rev.core;

import rev.core.Graphics;
import kha.FastFloat;
import rev.core.Types.Image;
import math.V2;
/**
 * Simple drawble for displaying pixels on the screen. 
 * Used for drawing primitives.
 * Does not function as a container.
 */
class Bitmap extends Drawable {
  public var width:Int;
  public var height:Int;

  public function new(width:Int, height:Int,?parent:Object) {
   super(parent); 
   this.width = width;
   this.height = height;
   this.texture = Image.createRenderTarget(width, height);
   this.g2 = new Graphics(this.texture.g2);
   this.setColor(0xFFFFFFFF);
  }

  public override function setColor(color:Int) {
    super.setColor(color);
    this.g2.color = color;
  }

  public override function begin() {
    this.g2.begin();
  }

  public function drawRect(v2:V2, width:Float, height:Float, strength:Float=1.0) {
    this.begin();
    this.g2.drawRect(v2, width, height, strength);
    this.end();
  }

  public function fillRect(v2:V2, width:Float, height:Float) {
    this.begin();
    this.g2.fillRect(v2, width, height);
    this.end();
  }

  public function drawCharacters(text:Array<Int>, start:Int, length:Int, position:V2) {
    this.begin();
    this.g2.drawCharacters(text, start, length, position);
    this.end();
  }

  public function drawLine(vec1:V2, vec2:V2, ?strength:Float) {
    this.begin();
    this.g2.drawLine(vec1, vec2, strength);
    this.end();
  }

  public function drawImage(img:Image, position:V2) {
    this.begin();
    this.g2.drawImage(img, position);
    this.end();
  }

  public function drawSubImage(img:Image, position:V2, sx:Float, sy:Float, sw:Float, sh:Float) {
    this.begin();
    this.g2.drawSubImage(img, position, sx, sy, sw, sh);
    this.end();
  }

  public function drawScaledSubImage(img:Image, sx: FastFloat, sy: FastFloat, sw: FastFloat, sh: FastFloat, dx: FastFloat, dy: FastFloat, dw: FastFloat, dh: FastFloat) {
    this.begin();
    this.g2.drawScaledSubImage(img, sx, sy, sw, sh, dx, dy, dw, dh);
    this.end();
  }

  public function fillTriangle(point1:V2, point2:V2, point3:V2) {
    this.begin();
    this.g2.fillTriangle(point1, point2, point3);
    this.end();
  }

  public function scissor(position:V2, width:Int, height:Int) {
    this.begin();
    this.g2.scissor(position, width, height);
    this.end();
  }
 
  public override function end() {
    this.g2.end();
  }
}