package com.sslivka.mycomp 
{
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	
	/* Button - основной родительский класс для кнопочных компонентов
	 * 
	 */
	public class Button extends Component
	{
		
		protected var _label:String = "Click Me";
		protected var _width:int = 90;
		protected var _height:int = 32;
		
		public function Button() 
		{
			super()
			
			/* нарисовать disable кнопку
			this.addChild(this.drawStartDisable());
			for (var i:uint = 0; i < this._width - 8; i++) this.addChild(this.drawBgDisable(4 + i));
			//this.addChild(this.drawSeparatorDisable(this._width - 4));
			this.addChild(this.drawFinishDisable(this._width - 4));
			*/
			
			/* нарисовать out кнопку
			this.addChild(this.drawStartOut());
			for (var i:uint = 0; i < this._width - 10; i++) this.addChild(this.drawBgOut(5 + i));
			//this.addChild(this.drawSeparatorOut(this._width - 5));
			this.addChild(this.drawFinishOut(this._width - 5));
			*/
		}
		
/* MouseEvent.MOUSE_OUT
**************************************************************************************************/
		
		/* drawStartOut - нарисовать начало MOUSE_OUT кнопки
		 * x:int, y:int - позиция в которую перемещаем bm после отрисовки
		 * height:int - высота кнопки
		 */
		protected function drawStartOut(x:int = 0, y:int = 0, height:int = 32):Bitmap
		{
			var bmd:BitmapData = new BitmapData(5, height);
			// 1-й столбец
			this.bmdDrawLineV(bmd, 0, 0, 2, this.getHex(0, 0, 0, 0.000)); bmd.setPixel32(0, 2, this.getHex(0, 0, 0, 0.004));
			bmd.setPixel32(0, 3, this.getHex(0, 0, 0, 0.008)); this.bmdDrawLineV(bmd, 0, 4, 2, this.getHex(0, 0, 0, 0.012));
			this.bmdDrawLineV(bmd, 0, 6, height - 12, this.getHex(0, 0, 0, 0.016)); this.bmdDrawLineV(bmd, 0, height - 6, 2, this.getHex(0, 0, 0, 0.012));
			bmd.setPixel32(0, height - 4, this.getHex(0, 0, 0, 0.008)); bmd.setPixel32(0, height - 3, this.getHex(0, 0, 0, 0.004));
			this.bmdDrawLineV(bmd, 0, height - 2, 2, this.getHex(0, 0, 0, 0.000));
			// 2-й столбец
			bmd.setPixel32(1, 0, this.getHex(0, 0, 0, 0.000)); bmd.setPixel32(1, 1, this.getHex(0, 0, 0, 0.004));
			bmd.setPixel32(1, 2, this.getHex(0, 0, 0, 0.039)); this.bmdDrawShadowLine(bmd, 1, 3, height - 9, 0.094, 0.176);
			bmd.setPixel32(1, height - 6, this.getHex(0, 0, 0, 0.161)); bmd.setPixel32(1, height - 5, this.getHex(0, 0, 0, 0.094));
			this.bmdDrawShadowLine(bmd, 1, height - 4, 3, 0.024, 0.004); bmd.setPixel32(1, height - 1, this.getHex(0, 0, 0, 0.000));
			// 3-й столбец
			bmd.setPixel32(2, 0, this.getHex(0, 0, 0, 0.008)); bmd.setPixel32(2, 1, this.getHex(0, 0, 0, 0.074));
			bmd.setPixel32(2, 2, this.getHex(0, 0, 0, 0.020)); this.bmdDrawShadowLine(bmd, 2, 3, height - 8, 0.012, 0.090);
			bmd.setPixel32(2, height - 5, this.getHex(0, 0, 0, 0.118)); bmd.setPixel32(2, height - 4, this.getHex(0, 0, 0, 0.188));
			this.bmdDrawShadowLine(bmd, 2, height - 3, 3, 0.024, 0.004);
			// 4-й столбец
			bmd.setPixel32(3, 0, this.getHex(0, 0, 0, 0.051)); bmd.setPixel32(3, 1, this.getHex(0, 0, 0, 0.020));
			this.bmdDrawShadowLine(bmd, 3, 2, height - 6, 0.004, 0.094); bmd.setPixel32(3, height - 4, this.getHex(0, 0, 0, 0.184));
			bmd.setPixel32(3, height - 3, this.getHex(0, 0, 0, 0.169)); bmd.setPixel32(3, height - 2, this.getHex(0, 0, 0, 0.023));
			bmd.setPixel32(3, height - 1, this.getHex(0, 0, 0, 0.008));
			// 5-й столбец
			bmd.setPixel32(4, 0, this.getHex(0, 0, 0, 0.090)); this.bmdDrawShadowLine(bmd, 4, 1, height - 5, 0.004, 0.094);
			bmd.setPixel32(4, height - 4, this.getHex(0, 0, 0, 0.118)); bmd.setPixel32(4, height - 3, this.getHex(0, 0, 0, 0.239));
			bmd.setPixel32(4, height - 2, this.getHex(0, 0, 0, 0.027)); bmd.setPixel32(4, height - 1, this.getHex(0, 0, 0, 0.012));
			var bm:Bitmap = new Bitmap(bmd);
			bm.x = x; bm.y = y;
			return bm;
		}
		
		/* drawBgOut - нарисовать задник MOUSE_OUT кнопки
		 * x:int, y:int - позиция в которую перемещаем bm после отрисовки
		 * height:int - высота кнопки
		 */
		protected function drawBgOut(x:int = 0, y:int = 0, height:int = 32):Bitmap
		{
			var bmd:BitmapData = new BitmapData(1, height);
			bmd.setPixel32(0, 0, this.getHex(0, 0, 0, 0.133)); this.bmdDrawShadowLine(bmd, 0, 1, height - 4, 0.004, 0.094);
			bmd.setPixel32(0, height - 3, this.getHex(0, 0, 0, 0.298)); bmd.setPixel32(0, height - 2, this.getHex(0, 0, 0, 0.031));
			bmd.setPixel32(0, height - 1, this.getHex(0, 0, 0, 0.016));
			var bm:Bitmap = new Bitmap(bmd);
			bm.x = x; bm.y = y;
			return bm;
		}
		
		/* drawFinishOut - нарисовать конец MOUSE_OUT кнопки
		 * x:int, y:int - позиция в которую перемещаем bm после отрисовки
		 * height:int - высота кнопки
		 */
		protected function drawFinishOut(x:int = 0, y:int = 0, height:int = 32):Bitmap
		{
			var bmd:BitmapData = new BitmapData(5, height);
			// 5-й столбец
			this.bmdDrawLineV(bmd, 4, 0, 2, this.getHex(0, 0, 0, 0.000)); bmd.setPixel32(4, 2, this.getHex(0, 0, 0, 0.004));
			bmd.setPixel32(4, 3, this.getHex(0, 0, 0, 0.008)); this.bmdDrawLineV(bmd, 4, 4, 2, this.getHex(0, 0, 0, 0.012));
			this.bmdDrawLineV(bmd, 4, 6, height - 12, this.getHex(0, 0, 0, 0.016)); this.bmdDrawLineV(bmd, 4, height - 6, 2, this.getHex(0, 0, 0, 0.012));
			bmd.setPixel32(4, height - 4, this.getHex(0, 0, 0, 0.008)); bmd.setPixel32(4, height - 3, this.getHex(0, 0, 0, 0.004));
			this.bmdDrawLineV(bmd, 4, height - 2, 2, this.getHex(0, 0, 0, 0.000));
			// 4-й столбец
			bmd.setPixel32(3, 0, this.getHex(0, 0, 0, 0.000)); bmd.setPixel32(3, 1, this.getHex(0, 0, 0, 0.004));
			bmd.setPixel32(3, 2, this.getHex(0, 0, 0, 0.039)); this.bmdDrawShadowLine(bmd, 3, 3, height - 9, 0.094, 0.176);
			bmd.setPixel32(3, height - 6, this.getHex(0, 0, 0, 0.161)); bmd.setPixel32(3, height - 5, this.getHex(0, 0, 0, 0.094));
			this.bmdDrawShadowLine(bmd, 3, height - 4, 3, 0.024, 0.004); bmd.setPixel32(3, height - 1, this.getHex(0, 0, 0, 0.000));
			// 3-й столбец
			bmd.setPixel32(2, 0, this.getHex(0, 0, 0, 0.008)); bmd.setPixel32(2, 1, this.getHex(0, 0, 0, 0.074));
			bmd.setPixel32(2, 2, this.getHex(0, 0, 0, 0.020)); this.bmdDrawShadowLine(bmd, 2, 3, height - 8, 0.012, 0.090);
			bmd.setPixel32(2, height - 5, this.getHex(0, 0, 0, 0.118)); bmd.setPixel32(2, height - 4, this.getHex(0, 0, 0, 0.188));
			this.bmdDrawShadowLine(bmd, 2, height - 3, 3, 0.024, 0.004);
			// 2-й столбец
			bmd.setPixel32(1, 0, this.getHex(0, 0, 0, 0.051)); bmd.setPixel32(1, 1, this.getHex(0, 0, 0, 0.020));
			this.bmdDrawShadowLine(bmd, 1, 2, height - 6, 0.004, 0.094); bmd.setPixel32(1, height - 4, this.getHex(0, 0, 0, 0.184));
			bmd.setPixel32(1, height - 3, this.getHex(0, 0, 0, 0.169)); bmd.setPixel32(1, height - 2, this.getHex(0, 0, 0, 0.023));
			bmd.setPixel32(1, height - 1, this.getHex(0, 0, 0, 0.008));
			// 1-й столбец
			bmd.setPixel32(0, 0, this.getHex(0, 0, 0, 0.090)); this.bmdDrawShadowLine(bmd, 0, 1, height - 5, 0.004, 0.094);
			bmd.setPixel32(0, height - 4, this.getHex(0, 0, 0, 0.118)); bmd.setPixel32(0, height - 3, this.getHex(0, 0, 0, 0.239));
			bmd.setPixel32(0, height - 2, this.getHex(0, 0, 0, 0.027)); bmd.setPixel32(0, height - 1, this.getHex(0, 0, 0, 0.012));
			var bm:Bitmap = new Bitmap(bmd);
			bm.x = x; bm.y = y;
			return bm;
		}
		
		/* drawSeparatorOut - нарисовать перегородку MOUSE_OUT кнопки
		 * x:int, y:int - позиция в которую перемещаем bm после отрисовки
		 * height:int - высота кнопки
		 */
		protected function drawSeparatorOut(x:int = 0, y:int = 0, height:int = 32):Bitmap
		{
			var bmd:BitmapData = new BitmapData(1, height);
			bmd.setPixel32(0, 0, this.getHex(0, 0, 0, 0.133)); this.bmdDrawShadowLine(bmd, 0, 1, height - 4, 0.102, 0.184);
			bmd.setPixel32(0, height - 3, this.getHex(0, 0, 0, 0.102)); bmd.setPixel32(0, height - 2, this.getHex(0, 0, 0, 0.039));
			bmd.setPixel32(0, height - 1, this.getHex(0, 0, 0, 0.016));
			var bm:Bitmap = new Bitmap(bmd);
			bm.x = x; bm.y = y;
			return bm;
		}
		
/* MouseEvent.MOUSE_OVER
**************************************************************************************************/
		
/* MouseEvent.MOUSE_DOWN
**************************************************************************************************/
		
/* DISABLE - неактивная кнопка
**************************************************************************************************/
		
		/* drawStartDisable - нарисовать начало DISABLE кнопки
		 * x:int, y:int - позиция в которую перемещаем bm после отрисовки
		 * height:int - высота кнопки
		 */
		protected function drawStartDisable(x:int = 0, y:int = 0, height:int = 30):Bitmap
		{
			var bmd:BitmapData = new BitmapData(4, height);
			// 1-й столбец
			bmd.setPixel32(0, 0, this.getHex(0, 0, 0, 0.000)); bmd.setPixel32(0, 1, this.getHex(0, 0, 0, 0.004));
			bmd.setPixel32(0, 2, this.getHex(0, 0, 0, 0.043)); bmd.setPixel32(0, 3, this.getHex(0, 0, 0, 0.106));
			this.bmdDrawLineV(bmd, 0, 4, height - 7, this.getHex(0, 0, 0, 0.121)); bmd.setPixel32(0, height - 4, this.getHex(0, 0, 0, 0.106));
			bmd.setPixel32(0, height - 3, this.getHex(0, 0, 0, 0.043)); bmd.setPixel32(0, height - 2, this.getHex(0, 0, 0, 0.004));
			bmd.setPixel32(0, height - 1, this.getHex(0, 0, 0, 0.000));
			// 2-й столбец
			bmd.setPixel32(1, 0, this.getHex(0, 0, 0, 0.004)); bmd.setPixel32(1, 1, this.getHex(0, 0, 0, 0.098));
			bmd.setPixel32(1, 2, this.getHex(0, 0, 0, 0.074)); this.bmdDrawLineV(bmd, 1, 3, height - 6, this.getHex(0, 0, 0, 0.063));
			bmd.setPixel32(1, height - 3, this.getHex(0, 0, 0, 0.078)); bmd.setPixel32(1, height - 2, this.getHex(0, 0, 0, 0.118));
			bmd.setPixel32(1, height - 1, this.getHex(0, 0, 0, 0.004));
			// 3-й столбец
			bmd.setPixel32(2, 0, this.getHex(0, 0, 0, 0.051)); bmd.setPixel32(2, 1, this.getHex(0, 0, 0, 0.074));
			this.bmdDrawLineV(bmd, 2, 2, height - 4, this.getHex(0, 0, 0, 0.063)); bmd.setPixel32(2, height - 2, this.getHex(0, 0, 0, 0.118));
			bmd.setPixel32(2, height - 1, this.getHex(0, 0, 0, 0.106));
			// 4-й столбец
			bmd.setPixel32(3, 0, this.getHex(0, 0, 0, 0.106)); this.bmdDrawLineV(bmd, 3, 1, height - 3, this.getHex(0, 0, 0, 0.063));
			bmd.setPixel32(3, height - 2, this.getHex(0, 0, 0, 0.078)); bmd.setPixel32(3, height - 1, this.getHex(0, 0, 0, 0.176));
			var bm:Bitmap = new Bitmap(bmd);
			bm.x = x; bm.y = y;
			return bm;
		}
		
		/* drawBgDisable - нарисовать задник DISABLE кнопки
		 * x:int, y:int - позиция в которую перемещаем bm после отрисовки
		 * height:int - высота кнопки
		 */
		protected function drawBgDisable(x:int = 0, y:int = 0, height:int = 30):Bitmap
		{
			var bmd:BitmapData = new BitmapData(1, height);
			bmd.setPixel32(0, 0, this.getHex(0, 0, 0, 0.121));
			this.bmdDrawLineV(bmd, 0, 1, height - 2, this.getHex(0, 0, 0, 0.063));
			bmd.setPixel32(0, height - 1, this.getHex(0, 0, 0, 0.192));
			var bm:Bitmap = new Bitmap(bmd);
			bm.x = x; bm.y = y;
			return bm;
		}
		
		/* drawFinishDisable - нарисовать конец DISABLE кнопки
		 * x:int, y:int - позиция в которую перемещаем bm после отрисовки
		 * height:int - высота кнопки
		 */
		protected function drawFinishDisable(x:int = 0, y:int = 0, height:int = 30):Bitmap
		{
			var bmd:BitmapData = new BitmapData(4, height);
			// 4-й столбец
			bmd.setPixel32(3, 0, this.getHex(0, 0, 0, 0.000)); bmd.setPixel32(3, 1, this.getHex(0, 0, 0, 0.004));
			bmd.setPixel32(3, 2, this.getHex(0, 0, 0, 0.043)); bmd.setPixel32(3, 3, this.getHex(0, 0, 0, 0.106));
			this.bmdDrawLineV(bmd, 3, 4, height - 7, this.getHex(0, 0, 0, 0.121)); bmd.setPixel32(3, height - 4, this.getHex(0, 0, 0, 0.106));
			bmd.setPixel32(3, height - 3, this.getHex(0, 0, 0, 0.043)); bmd.setPixel32(3, height - 2, this.getHex(0, 0, 0, 0.004));
			bmd.setPixel32(3, height - 1, this.getHex(0, 0, 0, 0.000));
			// 3-й столбец
			bmd.setPixel32(2, 0, this.getHex(0, 0, 0, 0.004)); bmd.setPixel32(2, 1, this.getHex(0, 0, 0, 0.098));
			bmd.setPixel32(2, 2, this.getHex(0, 0, 0, 0.074)); this.bmdDrawLineV(bmd, 2, 3, height - 6, this.getHex(0, 0, 0, 0.063));
			bmd.setPixel32(2, height - 3, this.getHex(0, 0, 0, 0.078)); bmd.setPixel32(2, height - 2, this.getHex(0, 0, 0, 0.118));
			bmd.setPixel32(2, height - 1, this.getHex(0, 0, 0, 0.004));
			// 2-й столбец
			bmd.setPixel32(1, 0, this.getHex(0, 0, 0, 0.051)); bmd.setPixel32(1, 1, this.getHex(0, 0, 0, 0.074));
			this.bmdDrawLineV(bmd, 1, 2, height - 4, this.getHex(0, 0, 0, 0.063)); bmd.setPixel32(1, height - 2, this.getHex(0, 0, 0, 0.118));
			bmd.setPixel32(1, height - 1, this.getHex(0, 0, 0, 0.106));
			// 1-й столбец
			bmd.setPixel32(0, 0, this.getHex(0, 0, 0, 0.106)); this.bmdDrawLineV(bmd, 0, 1, height - 3, this.getHex(0, 0, 0, 0.063));
			bmd.setPixel32(0, height - 2, this.getHex(0, 0, 0, 0.078)); bmd.setPixel32(0, height - 1, this.getHex(0, 0, 0, 0.176));
			var bm:Bitmap = new Bitmap(bmd);
			bm.x = x; bm.y = y;
			return bm;
		}
		
		/* drawSeparatorDisable - нарисовать перегородку DISABLE кнопки
		 * x:int, y:int - позиция в которую перемещаем bm после отрисовки
		 * height:int - высота кнопки
		 */
		protected function drawSeparatorDisable(x:int = 0, y:int = 0, height:int = 30):Bitmap
		{
			var bmd:BitmapData = new BitmapData(1, height);
			this.bmdDrawLineV(bmd, 0, 0, height - 1, this.getHex(0, 0, 0, 0.165));
			bmd.setPixel32(0, height - 1, this.getHex(0, 0, 0, 0.169));
			var bm:Bitmap = new Bitmap(bmd);
			bm.x = x; bm.y = y;
			return bm;
		}
		
	}

}