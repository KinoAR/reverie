package rev;
import math.V2;
class Text extends Drawable {

  public var letterSpacing:Int;
  public var lineSpacing:Int;
  public var maxWidth:Float;
  public var textColor:Int;
  public var textHeight:Int;
  public var textWidth:Int;
  public var text:String;

  public function new(rc:RenderContext, font:String, ?parent:Object) {
    super(rc, parent);
    this.textColor = 0xFFFFFF;
  }

  public function setText(text:String) {
    this.text = text;
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