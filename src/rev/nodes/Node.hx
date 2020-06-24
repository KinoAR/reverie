package rev.nodes;
import macros.RMacros;

class Node {
  public var name:String;
  public var path:String;
  public var parent:Node;
  public var available:Bool;
  public var children:Array<Node>;

  public function new() {
    RMacros.initName();
  }

  public function getParent() {
    return this.parent;
  }

  public function addChild(child:Node) {
    this.children.push(child);
    child.parent = this;
  }

  public function addChildAt(index:Int, child:Node) {
    this.children.insert(index, child);
    child.parent = this;
  }

  public function removeChildAt(index:Int) : Node {
    var child = this.children[index];
    this.children.splice(index, 1);
    return child;
  }

  public function clearChildren() {
    this.children.resize(0);
  }

  public function getName() : String {
    return this.name;
  }

  public function setName(name:String) {
    this.name = name;
  }

  public function setAvailable(available:Bool) {
    this.available = available;
  }

  public function isAvailable() {
    return this.available;
  }
  /**
   * Taps into the update context
   */
  public function update() {

  }

  /**
   * Taps into the physics context for processing physics
   */
  public function physics() {

  }
}