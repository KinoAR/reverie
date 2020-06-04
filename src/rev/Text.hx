package rev;
import math.V2;
import kha.Font;

class Text extends Drawable {

  public var letterSpacing:Int;
  public var lineSpacing:Int;
  public var maxWidth:Float;
  public var fontSize:Int;
  public var font:kha.Font;
  public var textColor:Int;
  public var textHeight (get, null): Float;
  public var textWidth (get, null) :Float;
  public var text:String;
  // public var text (get,set):String;

  public function new(rc:RenderContext, font:String, ?parent:Object) {
    super(rc, parent);
    this.textColor = 0xFFFFFF;
    this.text = "";
  }

  private function get_textHeight():Float {
    return this.font.height(this.fontSize);
  }

  private function get_textWidth():Float {
    return this.font.width(this.fontSize, this.text);
  }

  public function setText(text:String) {
    this.text = text;
  }

  public function getText() {
    return this.text;
  } 

  public function drawText(text:String, position:V2) {
    this.setText(text);
    this.rc.drawText(this.text, position);
  }

  public override function setColor(color:Int) {
    this.textColor = color;
  }

  public override function resetColor() {
    this.textColor=0xFFFFFF;
  }

}