package rev.nodes;

import macros.RMacros;
import kha.Image;

class Sprite extends Node2D {
  public var width:Int;
  public var height:Int;
  public var texture:Image;
  var _textureCanvas:Image;

  public function new() {
    super();
    RMacros.initName();
  }

  public function setTexture(texture:Image) {
    this.texture = texture;
    this._textureCanvas = Image.createRenderTarget(texture.width, texture.height);
  }

  public function getTexture():Image {
    return this.texture;
  }
}