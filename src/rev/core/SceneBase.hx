package rev.core;

class SceneBase {
  var children: Array<Object>;

  public function new() {
    this.children = [];
    this.init();
  }

  public function init() {

  }

  public function addChild(obj:Object) {
    this.children.push(obj);
  }

  public function addChildAt(index:Int) {

  }

  public function removeChildAt(index:Int) {
    this.children.splice(index, 1);
  }

  public function removeChildren() {
    this.children.resize(0);
  }

  public function update() {

  }

  public function dipose() {
    this.removeChildren();
  }
}