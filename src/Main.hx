
import exp.ecs.*;
import exp.ecs.node.*;
import exp.ecs.entity.*;
import exp.ecs.system.*;
import component.*;
import haxe.Timer;
import system.RenderSystem;

class Main extends hxd.App {
  var ecsEngine:Engine<Event>;

  override function init() {
    this.ecsEngine = new Engine<Event>();
    testEngine();
  }

  private function testEngine() {
    var entity = new Entity();
    var sprite = new rev.Sprite(s2d);
    sprite.beginFill(0x00F300);
    sprite.drawRect(0, 0, 400, 400);
    sprite.endFill();
    entity.add(new Displayable(sprite));
    entity.add(new Transform(50, 50));
    this.ecsEngine.entities.add(entity);

    this.ecsEngine.systems.add(new RenderSystem(s2d));    
  }

  override function update(dt:Float) {
    updateSystems(dt);
  }

  private function updateSystems(dt:Float) {
   this.ecsEngine.update(dt); 
  }

  static function main() {
    new Main();
  }
}

enum Event {
	Collision(data:{entity1:Entity, entity2:Entity, group1:Int, group2:Int});
	GameOver;
}