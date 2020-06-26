package;

import kha.Scaler;
import kha.Assets;
import kha.Color;
import kha.Framebuffer;
import kha.Scheduler;
import kha.System;
import rev.core.RenderContext;
import rev.core.Bitmap;
import rev.core.Text;
import kha.Image;
import math.V2;
import rev.input.Keyboard;
import rev.input.Mouse;
import macros.MacroTest;
import rev.core.Interactive;
import rev.nodes.Node2D;
import rev.core.Graphics;
import hxmath.math.Vector2;

class Main {
	public static var debugFont:kha.Font;
	public static var exampleImage:Image;
	public static inline var screenWidth:Int=800;
	public static inline var screenHeight:Int=600;
	

	static function update(): Void {

	}

	public static function onAssetsLoaded() {
		// Avoid passing update/render directly,
		// so replacing them via code injection works
				exampleImage = Assets.images.human_sprite;
				debugFont = Assets.fonts.mplus_1c_light;
		Keyboard.initialize();
		Mouse.initialize();
		Scheduler.addTimeTask(function () { update(); }, 0, 1 / 60);
		System.notifyOnFrames(function (frames) { render(frames); });
	}

	static function render(frames: Array<Framebuffer>): Void {
		// As we are using only 1 window, grab the first framebuffer
		final fb = frames[0];
		// Now get the `g2` graphics object so we can draw
		final g2 = fb.g2;
		var rc = RenderContext;
		var renderTarget = Image.createRenderTarget(screenWidth, screenHeight);
		var graphics = new Graphics(renderTarget.g2);
		graphics.begin();
		graphics.drawRect(new V2(100, 100), 100, 100, 1);
		graphics.end();
		// rc.setupContext(renderTarget.g2);	
		
		// // Start drawing, and clear the framebuffer to `petrol`
		// rc.begin(true, Color.fromBytes(0, 95, 106));
		
		// Offset all following drawing operations from the top-left a bit
		// rc.pushTranslation(new V2(64, 64));
		// Fill the following rects with red
		var bitmap = new Bitmap(400, 400);
		// bitmap.drawRect(new V2(10, 10), 100, 100);
		
		// rc.font = 
		//Scales to appropriate size
		var text = new Text(screenWidth, screenWidth,debugFont);
		bitmap.setColor(0xFFFFFFFF);
		bitmap.setOpacity(0.5);
		bitmap.setPosition(new V2(200, 100));
		bitmap.drawRect(new V2(50, 40), 30, 30, 2.0);
		bitmap.resetColor();
		bitmap.drawImage(exampleImage, new V2(30, 30));
		bitmap.setOpacity(1.0);
		bitmap.setColor(Color.Red);
		bitmap.drawRect(new V2(100, 100), 40, 40, 2.0);
		var b2 =new Bitmap(400, 400);
		b2.setColor(Color.Red);
		b2.drawRect(new V2(100, 100), 40, 40, 2.0);
		
		text.fontSize = 100;
		text.textColor = Color.Red;
		text.drawText("Hello Kha", new V2(0, 0));
		var testInteractive = new Interactive(text);
		testInteractive.onMouseDown = (button, x, y) -> {
			trace(testInteractive.entity.text);
			trace("Mouse Down Check");
		}

		var d = new V2(1, 1);
		var k = d + d;
		trace(k);

		// Pop the pushed translation so it will not accumulate over multiple frames
		// rc.popTransformation();
		// Finish the drawing operations
		var node = new Node2D();
		// rc.end();
		g2.begin();	
		//Next Level -- > Abstract this into draw order for higher level systems
		Scaler.scale(renderTarget, frames[0], System.screenRotation);
		Scaler.scale(bitmap.texture, frames[0], System.screenRotation);
		Scaler.scale(text.texture, frames[0], System.screenRotation);
		g2.end();
	}

	public static function main() {
		System.start({title: "Reverie", width: 1024, height: 768}, function (_) {
			// Just loading everything is ok for small projects
			Assets.loadEverything(onAssetsLoaded);
		});
	}
}
