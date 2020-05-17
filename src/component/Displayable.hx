package component;

import exp.ecs.component.Component;

class Displayable extends Component {

  public var drawable:h2d.Drawable;

  public function new (drawable:h2d.Drawable) {
    this.drawable = drawable;
  }
}