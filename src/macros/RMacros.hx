package macros;

import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.TypeTools;
using Lambda;

class RMacros {
  macro static public function initLocals():Expr {
    var locals = Context.getLocalVars();
    var fields = Context.getLocalClass().get().fields.get();

    var exprs:Array<Expr> = [];
    for (local in locals.keys()) {
      if(fields.exists((field) -> field.name == local)) {
        //$i generates an identifier with the given string name
        exprs.push(macro this.$local = $i{local});
      }
    }
    //Generates a programming block with the given list of exprs
    return macro $b{exprs};
  }

  /**
   * Creates an expression that initializes the name tag to the class name
   * @return Expr
   */
  macro static public function initName():Expr {
    var className = Context.getLocalClass().get().name;
    var name = "name";
    var expr:Expr = macro this.$name = $v{className};
    return expr;
  }
}