package rev.nodes;

import macros.RMacros;
import kha.Image;

class Sprite extends Node2D {
  var texture:Image;

  public function new() {
    super();
    RMacros.initName();
  }

  public function setTexture(texture:Image) {
    this.texture = texture;
  }

  public function getTexture():Image {
    return this.texture;
  }
}