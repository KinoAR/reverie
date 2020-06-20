package rev.nodes;
import math.V2;
import macros.RMacros;

class Node2D extends Node {

  public var visible:Bool;
  public var globalPosition(get,set):V2;
  public var position:V2;
  public var z:Int;

  public function new() {
    super();
    RMacros.initName();
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