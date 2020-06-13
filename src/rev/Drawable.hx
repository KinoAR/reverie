package rev;
import kha.graphics2.Graphics;
import kha.Color;
import math.V2;
import Type;

/**
 * Any object that can be rendered to the screen.
 * Must have the render context past in to be drawn.
 */
class Drawable extends Object{
  
  public var position:V2;
  public var g2: Graphics;
  /**
   * Z Index for which layer the element is drawn at;
   */
  public var z:Int;
  public var rc:RenderContext;
  public var color(get, set):Color;
  public var visible:Bool;
  public var parent:Object;
  public var globalPosition(get,set):V2;

  public function new(rc:RenderContext,?parent:Object) {
    this.rc = rc;
    this.z=-1;
    this.color = 0xFFFFFF;
    this.position = new V2(0, 0);
    this.parent = parent;
  }


  private function get_color() :kha.Color{
    return this.rc.color;
  }

  private function set_color(color:kha.Color):kha.Color {
    return this.rc.color = color;
  }

  /**
   *  Used for drawing things on the screen by batching all the draw
   *  calls to the render system.
   */
  public function draw() {

  }

  /**
   * Sets the color of the drawable element for when drawing
   * any kind of primitive shape or text.
   * @param color 
   */
  public function setColor(color:Int) {
    this.color = color;
  }

  /**
   * Resets the color to the default (white). 
   */
  public function resetColor() {
    this.color=0xFFFFFF;
  }

  /**
   * Shows the drawable object to the renderer.
   */
  public function show() {
    this.visible = true;
  }

  /**
   * Hides the drawable object from the renderer.
   */
  public function hide() {
    this.visible = false;
  }

  public function getParent() {
    return this.parent;
  }

  public function setParent(parent:Object) {
    this.parent = parent;
  }
  
  public function setPosition(position:math.V2) {
    this.position = position;
  }

  public inline function getZIndex():Int {
    return this.z;
  }
  
  public function setZIndex(value:Int) {
    this.z = value;
  }

  public function getPosition() {
    return this.position;
  }

  /**
   * Pushes the opacity to be used by the rendering context.
   * @param opacity 
   */
  public function pushOpacity(opacity:Float) {
    this.rc.pushOpacity(opacity);
  }

  /**
   * Pop the opacity being used by the rendering context.
   * @return Float
   */
  public function popOpacity() : Float {
    return this.rc.popOpacity();
  }

  public function scale(scale:V2) {
    this.rc.scale(scale);
  }

  public function setOpacity(opacity:Float) {
    this.rc.setOpacity(opacity);
  }

  public function resetOpacity() {
    this.rc.setOpacity(1.0);
  }

  public function set_globalPosition(position:V2):V2 {
    var parent:Dynamic = this.parent;
    if(parent != null && parent.position != null) {
      var currentPosition = this.globalPosition;
      var positionalDiff = position.sub(currentPosition);
      return this.position = positionalDiff;
    } else {
      return this.position = position;
    }
  }

  public function get_globalPosition():V2 {
    var parent:Dynamic = this.parent;
    if(parent != null && parent.position != null) {
      return this.position.add(parent.globalPosition);
    } else {
      return this.position;
    }
  }
}