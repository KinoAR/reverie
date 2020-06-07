package;

import kha.Assets;
import kha.Color;
import kha.Framebuffer;
import kha.Scheduler;
import kha.System;
import rev.RenderContext;
import rev.Bitmap;
import rev.Text;
import kha.Image;
import math.V2;

class Main {
	public static var debugFont:kha.Font;
	public static var exampleImage:Image;
	

	static function update(): Void {
	}

	public static function onAssetsLoaded() {
		// Avoid passing update/render directly,
				// so replacing them via code injection works
				exampleImage = Assets.images.human_sprite;
				debugFont = Assets.fonts.mplus_1c_light;
		Scheduler.addTimeTask(function () { update(); }, 0, 1 / 60);
		System.notifyOnFrames(function (frames) { render(frames); });
	}

	static function render(frames: Array<Framebuffer>): Void {
		// As we are using only 1 window, grab the first framebuffer
		final fb = frames[0];
		// Now get the `g2` graphics object so we can draw
		final g2 = fb.g2;
		final rc = new RenderContext(g2);	
		
		// Start drawing, and clear the framebuffer to `petrol`
		rc.begin(true, Color.fromBytes(0, 95, 106));
		
		// Offset all following drawing operations from the top-left a bit
		// rc.pushTranslation(new V2(64, 64));
		// Fill the following rects with red
		var bitmap = new Bitmap(rc);
		// rc.font = 
		var text = new Text(rc, debugFont);
		bitmap.setColor(0xFFFFFFFF);
		bitmap.setOpacity(0.5);
		bitmap.setPosition(new V2(200, 100));
		bitmap.drawRect(new V2(50, 40), 300, 300, 2.0);
		bitmap.resetColor();
		bitmap.drawImage(exampleImage, new V2(30, 30));
		bitmap.setOpacity(1.0);
		bitmap.setColor(Color.Red);
		bitmap.drawRect(new V2(100, 100), 300, 300, 2.0);
		text.fontSize = 24;
		text.drawText("Hello Kha", new V2(150, 150));

		// Pop the pushed translation so it will not accumulate over multiple frames
		// rc.popTransformation();
		// Finish the drawing operations
		rc.end();
	}

	public static function main() {
		System.start({title: "Reverie", width: 1024, height: 768}, function (_) {
			// Just loading everything is ok for small projects
			Assets.loadEverything(onAssetsLoaded);
		});
	}
}
