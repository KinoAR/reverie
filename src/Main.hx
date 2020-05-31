package;

import kha.System;
class Main {
  static function main() {
    System.start({title:"Reverie", width:1024, height:768}, (window) -> {
      new Project();
    });
  }
}
