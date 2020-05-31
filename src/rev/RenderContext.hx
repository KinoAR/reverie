package rev;

import kha.Image;
import math.V2;

class RenderContext {

  public var g2:kha.graphics2.Graphics;
  public function new(graphics:kha.graphics2.Graphics) {
    this.g2 = graphics;
  }

  public function begin() {
    this.g2.begin();
  }

  public function end() {
    this.g2.end();
  }

  public function flush() {
    this.g2.flush();
  }

  public function clear(?color) {
    this.g2.clear(color);
  }

  public function setOpacity(opacity:Float) {
    this.g2.opacity = opacity;
  }

  public function drawRect(v2:V2, width:Float, height:Float, ?strength:Float) {
    this.g2.drawRect(v2.x, v2.y, width, height, strength);
  }

  public function fillRect(v2:V2, width:Float, height:Float) {
    this.g2.fillRect(v2.x, v2.y, width, height);
  }

  public function drawText(text:String, v2:V2) {
    this.g2.drawString(text, v2.x, v2.y);
  }

  public function drawCharacters(text:Array<Int>, start:Int, length:Int, position:V2) {
    this.g2.drawCharacters(text, start, length, position.x, position.y);
  }

  public function drawLine(vec1:V2, vec2:V2, ?strength:Float) {
    this.g2.drawLine(vec1.x, vec1.y, vec2.x, vec2.y, strength);
  }

  public function drawImage(img:Image, v2:V2) {
    this.g2.drawImage(img, v2.x, v2.y);
  }

  public function drawSubImage(img:Image, x:Float, y:Float, sx:Float, sy:Float, sw:Float, sh:Float) {
    this.g2.drawSubImage(img, x, y, sx, sy, sw, sh);
  }

  public function fillTriangle(point1:V2, point2:V2, point3:V2) {
    this.g2.fillTriangle(point1.x, point1.y, point2.x, point2.y, point3.x, point3.y);
  }

  public function scissor(position:V2, width:Int, height:Int) {
    this.g2.scissor(Std.int(position.x), Std.int(position.y), width, height);
  }

  public function disableScissor() {
    this.g2.disableScissor();
  }
    
}
