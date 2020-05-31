
package;

import math.V2;
import kha.Assets;
import kha.Image;
import kha.Framebuffer;
import kha.Scheduler;
import kha.System;
import Globals;
import rev.RenderContext;

class Project {
  var exampleImage:Image;
  public function new() {
    Assets.loadEverything(onAssetsLoaded);
    
  }

  function onAssetsLoaded() {
    exampleImage = Assets.images.human_sprite;
    System.notifyOnFrames(render);
    Scheduler.addTimeTask(update, 0, 1 /60);
  }

  function update(): Void {

  }



  function render(frameBuffers: Array<Framebuffer>) {
   var g2 = frameBuffers[0].g2; 
   var rc = new RenderContext(g2);
   trace("Render");
   Globals.setGraphics(g2);
   rc.begin();
   trace(exampleImage);
   rc.drawImage(exampleImage, new V2(30, 30));
   rc.end();
  }
}