package system;

import exp.ecs.*;
import exp.ecs.node.*;
import exp.ecs.entity.*;
import exp.ecs.system.*;
import component.*;
using Lambda;



class RenderSystem<Event> extends System<Event> {
  @:nodes var nodes:Node<Transform, Displayable>;

  var scene:h2d.Scene;

  public function new(scene:h2d.Scene) {
    super();
    this.scene = scene;
  }

  override function update(dt:Float) {
    for(node in nodes) {
      // trace('${node.entity} @ ${node.transform.x}, ${node.transform.y}');
    }
  }

  override function onAdded(engine:Engine<Event>) {
    super.onAdded(engine);
    nodes.iter((node) -> addToDisplay(node));
  }

  override function onRemoved(engine:Engine<Event>) {
    nodes.iter((node) -> removeFromDisplay(node));
  }

  private function addToDisplay(node:Node<Transform,Displayable>) {
    this.scene.addChild(node.displayable.drawable);
  }

  private function removeFromDisplay(node:Node<Transform, Displayable>) {
    this.scene.removeChild(node.displayable.drawable);
  }
}