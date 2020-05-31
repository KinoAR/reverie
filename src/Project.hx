
package;

import kha.Assets;
import kha.Image;
import kha.Framebuffer;
import kha.Scheduler;
import kha.System;

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
   g2.begin();
   trace(exampleImage);
   g2.drawImage(exampleImage, 30, 30);
   g2.end();
  }
}