package component;

import exp.ecs.component.Component;


class Transform extends Component {
  public var x:Float;
  public var y:Float;

  public function new(x:Float, y:Float) {
    this.x = x;
    this.y = y;
  }
}