package rev.nodes;

import macros.RMacros;
import rev.core.Types;

class AnimatedSprite extends Node {
  public var frameWidth:Int;
  public var frameHeight:Int;
  public var texture:Image;
  private var _textureCanvas:Image;

  public function new() {
    super();
    RMacros.initName();
  }

  public function setTexture(texture:Image) {
    this.texture = texture;
    this._textureCanvas = Image.createRenderTarget(frameWidth, frameHeight);
  }

  public function getTexture():Image {
    return this.texture;
  }

}