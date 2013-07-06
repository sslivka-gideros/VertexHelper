package 
{
	import com.sslivka.mycomp.Button;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.stageFocusRect = false;
			stage.addEventListener(Event.RESIZE, onResize);
			
			var myButton:Button = new Button();
			this.addChild(myButton);
			myButton.x = 10;
			myButton.y = 10;
			
		}
		
		private function onResize(e:Event = null):void
		{
			
		}
		
	}
	
}