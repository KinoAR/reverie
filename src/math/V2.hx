package math;


class V2 {

  public var x:Float;
  public var y:Float;

  public inline function new (x:Float, y:Float) {
    this.x = x;
    this.y = y;
  }

  public function add(v2:V2) {
    return new V2(this.x + v2.x, this.y + v2.y);
  }

  public function sub(v2:V2) {
    return new V2(this.x - v2.x, this.y - v2.y);
  }

  public function normalize() {
    return new V2(this.x / this.magnitude(), this.y / this.magnitude());
  }

  public inline function magnitude() {
    return Math.sqrt( (this.x * this.x) + ( this.y * this.y) );
  }

  public inline function distanceTo(v2:V2) {
    return Math.sqrt( Math.pow((this.x - v2.x ), 2)  + Math.pow((this.y - v2.y),2));
  }
}