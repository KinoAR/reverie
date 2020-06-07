package rev;
import kha.graphics2.Graphics;
import kha.Color;

/**
 * Any object that can be rendered to the screen.
 * Must have the render context past in to be drawn.
 */
class Drawable {

  public var x:Float;
  public var y:Float;
  public var g2: Graphics;
  public var rc:RenderContext;
  public var color(get, set):Color;
  public var visible:Bool;

  public function new(rc:RenderContext,?parent:Object) {
    this.rc = rc;
    this.color = 0xFFFFFF;
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
}