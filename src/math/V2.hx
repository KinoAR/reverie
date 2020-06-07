package math;


class V2 {

  public var x:Float;
  public var y:Float;

  public function new (x:Float, y:Float) {
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

  public function magnitude() {
    return Math.sqrt( (this.x * this.x) + ( this.y * this.y) );
  }

  public function distanceTo(v2:V2) {

  }
}