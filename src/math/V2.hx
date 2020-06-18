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

  /**
   * Dot Product result.
   * @param v2 
   * @return Float
   */
  public inline function dotProduct(v2:V2):Float {
    return (this.x * v2.x) + (this.y + v2.y);
  }

  /**
   * Normalized Dot Product anywhere from 1 - 1.
   * @param v2 
   * @return Float
   */
  public inline function dotProductN(v2:V2) :Float {
    var norm1 = this.normalize();
    var norm2 = v2.normalize();
    return (norm1.x * norm2.x ) + (norm1.y + norm2.y);
  }

}