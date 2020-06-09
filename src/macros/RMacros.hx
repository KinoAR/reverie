package macros;

import haxe.macro.Context;
import haxe.macro.Expr;
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
}