package macros;

class MacroTest {
  var x:Int;
  var y:Int;
  var str:String;

  public function new(x:Int, y:Int, str:String) {
    RMacros.initLocals();
    trace(this.x);
  }
}