package;

import kha.graphics2.Graphics;

class Globals {

  public static var g2:Graphics;
  //Add Window Information

  public static function init(baseG2:Graphics) {
    g2 = baseG2;
  }

  public static function setGraphics(baseG2:Graphics) {
    g2 = baseG2;
  }

  public static function getGraphics() {
    return g2;
  }

}