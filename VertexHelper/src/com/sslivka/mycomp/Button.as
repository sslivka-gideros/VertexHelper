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
			
			/* нарисовать out кнопку
			this.addChild(this.drawStartOut());
			for (var i:uint = 0; i < this._width - 10; i++) this.addChild(this.drawBgOut(5 + i));
			//this.addChild(this.drawSeparatorOut(this._width - 5));
			this.addChild(this.drawFinishOut(this._width - 5));
			*/
			
			/* нарисовать over кнопку
			this.addChild(this.drawStartOver());
			for (var i:uint = 0; i < this._width - 10; i++) this.addChild(this.drawBgOver(5 + i));
			//this.addChild(this.drawSeparatorOver(this._width - 5));
			this.addChild(this.drawFinishOver(this._width - 5));
			*/
			
			/* нарисовать down кнопку
			this.addChild(this.drawStartDown());
			for (var i:uint = 0; i < this._width - 10; i++) this.addChild(this.drawBgDown(5 + i));
			//this.addChild(this.drawSeparatorDown(this._width - 5));
			this.addChild(this.drawFinishDown(this._width - 5));
			*/
			
			/* нарисовать disable кнопку
			this.addChild(this.drawStartDisable());
			for (var i:uint = 0; i < this._width - 8; i++) this.addChild(this.drawBgDisable(4 + i));
			//this.addChild(this.drawSeparatorDisable(this._width - 4));
			this.addChild(this.drawFinishDisable(this._width - 4));
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
		
		/* drawStartOver - нарисовать начало MOUSE_OVER кнопки
		 * x:int, y:int - позиция в которую перемещаем bm после отрисовки
		 * height:int - высота кнопки
		 */
		protected function drawStartOver(x:int = 0, y:int = 0, height:int = 32):Bitmap
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
			bmd.setPixel32(1, 2, this.getHex(0, 0, 0, 0.074)); bmd.setPixel32(1, 3, this.getHex(0, 0, 0, 0.133));
			this.bmdDrawShadowLine(bmd, 1, 4, height - 10, 0.161, 0.188); bmd.setPixel32(1, height - 6, this.getHex(0, 0, 0, 0.161));
			bmd.setPixel32(1, height - 5, this.getHex(0, 0, 0, 0.086)); this.bmdDrawShadowLine(bmd, 1, height - 4, 3, 0.027, 0.004);
			bmd.setPixel32(1, height - 1, this.getHex(0, 0, 0, 0.000));
			// 3-й столбец
			bmd.setPixel32(2, 0, this.getHex(0, 0, 0, 0.004)); bmd.setPixel32(2, 1, this.getHex(0, 0, 0, 0.121));
			bmd.setPixel32(2, 2, this.getHex(0, 0, 0, 0.070)); this.bmdDrawShadowLine(bmd, 2, 3, height - 8, 0.055, 0.098);
			bmd.setPixel32(2, height - 5, this.getHex(0, 0, 0, 0.121)); bmd.setPixel32(2, height - 4, this.getHex(0, 0, 0, 0.188));
			this.bmdDrawShadowLine(bmd, 1, height - 3, 3, 0.031, 0.004);
			// 4-й столбец
			bmd.setPixel32(3, 0, this.getHex(0, 0, 0, 0.074)); bmd.setPixel32(3, 1, this.getHex(0, 0, 0, 0.067));
			this.bmdDrawShadowLine(bmd, 3, 2, height - 6, 0.055, 0.098); bmd.setPixel32(3, height - 4, this.getHex(0, 0, 0, 0.184));
			bmd.setPixel32(3, height - 3, this.getHex(0, 0, 0, 0.176)); bmd.setPixel32(3, height - 2, this.getHex(0, 0, 0, 0.023));
			bmd.setPixel32(3, height - 1, this.getHex(0, 0, 0, 0.008));
			// 5-й столбец
			bmd.setPixel32(4, 0, this.getHex(0, 0, 0, 0.129)); bmd.setPixel32(4, 1, this.getHex(0, 0, 0, 0.047));
			this.bmdDrawShadowLine(bmd, 4, 2, height - 6, 0.059, 0.098); bmd.setPixel32(4, height - 4, this.getHex(0, 0, 0, 0.121));
			bmd.setPixel32(4, height - 3, this.getHex(0, 0, 0, 0.274)); bmd.setPixel32(4, height - 2, this.getHex(0, 0, 0, 0.027));
			bmd.setPixel32(4, height - 1, this.getHex(0, 0, 0, 0.012));
			var bm:Bitmap = new Bitmap(bmd);
			bm.x = x; bm.y = y;
			return bm;
		}
		
		/* drawBgOver - нарисовать задник MOUSE_OVER кнопки
		 * x:int, y:int - позиция в которую перемещаем bm после отрисовки
		 * height:int - высота кнопки
		 */
		protected function drawBgOver(x:int = 0, y:int = 0, height:int = 32):Bitmap
		{
			var bmd:BitmapData = new BitmapData(1, height);
			bmd.setPixel32(0, 0, this.getHex(0, 0, 0, 0.145)); bmd.setPixel32(0, 1, this.getHex(0, 0, 0, 0.043));
			this.bmdDrawShadowLine(bmd, 0, 2, height - 5, 0.059, 0.098); bmd.setPixel32(0, height - 3, this.getHex(0, 0, 0, 0.298));
			bmd.setPixel32(0, height - 2, this.getHex(0, 0, 0, 0.031)); bmd.setPixel32(0, height - 1, this.getHex(0, 0, 0, 0.016));
			var bm:Bitmap = new Bitmap(bmd);
			bm.x = x; bm.y = y;
			return bm;
		}
		
		/* drawFinishOver - нарисовать конец MOUSE_OVER кнопки
		 * x:int, y:int - позиция в которую перемещаем bm после отрисовки
		 * height:int - высота кнопки
		 */
		protected function drawFinishOver(x:int = 0, y:int = 0, height:int = 32):Bitmap
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
			bmd.setPixel32(3, 2, this.getHex(0, 0, 0, 0.074)); bmd.setPixel32(3, 3, this.getHex(0, 0, 0, 0.133));
			this.bmdDrawShadowLine(bmd, 3, 4, height - 10, 0.161, 0.188); bmd.setPixel32(3, height - 6, this.getHex(0, 0, 0, 0.161));
			bmd.setPixel32(3, height - 5, this.getHex(0, 0, 0, 0.086)); this.bmdDrawShadowLine(bmd, 3, height - 4, 3, 0.027, 0.004);
			bmd.setPixel32(3, height - 1, this.getHex(0, 0, 0, 0.000));
			// 3-й столбец
			bmd.setPixel32(2, 0, this.getHex(0, 0, 0, 0.004)); bmd.setPixel32(2, 1, this.getHex(0, 0, 0, 0.121));
			bmd.setPixel32(2, 2, this.getHex(0, 0, 0, 0.070)); this.bmdDrawShadowLine(bmd, 2, 3, height - 8, 0.055, 0.098);
			bmd.setPixel32(2, height - 5, this.getHex(0, 0, 0, 0.121)); bmd.setPixel32(2, height - 4, this.getHex(0, 0, 0, 0.188));
			this.bmdDrawShadowLine(bmd, 1, height - 3, 3, 0.031, 0.004);
			// 2-й столбец
			bmd.setPixel32(1, 0, this.getHex(0, 0, 0, 0.074)); bmd.setPixel32(1, 1, this.getHex(0, 0, 0, 0.067));
			this.bmdDrawShadowLine(bmd, 1, 2, height - 6, 0.055, 0.098); bmd.setPixel32(1, height - 4, this.getHex(0, 0, 0, 0.184));
			bmd.setPixel32(1, height - 3, this.getHex(0, 0, 0, 0.176)); bmd.setPixel32(1, height - 2, this.getHex(0, 0, 0, 0.023));
			bmd.setPixel32(1, height - 1, this.getHex(0, 0, 0, 0.008));
			// 1-й столбец
			bmd.setPixel32(0, 0, this.getHex(0, 0, 0, 0.129)); bmd.setPixel32(0, 1, this.getHex(0, 0, 0, 0.047));
			this.bmdDrawShadowLine(bmd, 0, 2, height - 6, 0.059, 0.098); bmd.setPixel32(0, height - 4, this.getHex(0, 0, 0, 0.121));
			bmd.setPixel32(0, height - 3, this.getHex(0, 0, 0, 0.274)); bmd.setPixel32(0, height - 2, this.getHex(0, 0, 0, 0.027));
			bmd.setPixel32(0, height - 1, this.getHex(0, 0, 0, 0.012));
			var bm:Bitmap = new Bitmap(bmd);
			bm.x = x; bm.y = y;
			return bm;
		}
		
		/* drawSeparatorOver - нарисовать перегородку MOUSE_OVER кнопки
		 * x:int, y:int - позиция в которую перемещаем bm после отрисовки
		 * height:int - высота кнопки
		 */
		protected function drawSeparatorOver(x:int = 0, y:int = 0, height:int = 32):Bitmap
		{
			var bmd:BitmapData = new BitmapData(1, height);
			this.bmdDrawShadowLine(bmd, 0, 0, height - 3, 0.145, 0.188); bmd.setPixel32(0, height - 3, this.getHex(0, 0, 0, 0.239));
			bmd.setPixel32(0, height - 2, this.getHex(0, 0, 0, 0.039)); bmd.setPixel32(0, height - 1, this.getHex(0, 0, 0, 0.016));
			var bm:Bitmap = new Bitmap(bmd);
			bm.x = x; bm.y = y;
			return bm;
		}
		
/* MouseEvent.MOUSE_DOWN
**************************************************************************************************/
		
		/* drawStartDown - нарисовать начало DOWN кнопки
		 * x:int, y:int - позиция в которую перемещаем bm после отрисовки
		 * height:int - высота кнопки
		 */
		protected function drawStartDown(x:int = 0, y:int = 0, height:int = 32):Bitmap
		{
			var bmd:BitmapData = new BitmapData(5, height);
			// 1-й столбец
			this.bmdDrawLineV(bmd, 0, 0, 2, this.getHex(0, 0, 0, 0.000)); bmd.setPixel32(0, 2, this.getHex(0, 0, 0, 0.004));
			bmd.setPixel32(0, 3, this.getHex(0, 0, 0, 0.008)); this.bmdDrawLineV(bmd, 0, 4, 2, this.getHex(0, 0, 0, 0.012));
			this.bmdDrawLineV(bmd, 0, 6, height - 12, this.getHex(0, 0, 0, 0.016)); this.bmdDrawLineV(bmd, 0, height - 6, 2, this.getHex(0, 0, 0, 0.012));
			bmd.setPixel32(0, height - 4, this.getHex(0, 0, 0, 0.008)); bmd.setPixel32(0, height - 3, this.getHex(0, 0, 0, 0.004));
			this.bmdDrawLineV(bmd, 0, height - 2, 2, this.getHex(0, 0, 0, 0.000));
			// 2-й столбец
			bmd.setPixel32(1, 0, this.getHex(0, 0, 0, 0.000)); bmd.setPixel32(1, 1, this.getHex(0, 0, 0, 0.008));
			bmd.setPixel32(1, 2, this.getHex(0, 0, 0, 0.078)); bmd.setPixel32(1, 3, this.getHex(0, 0, 0, 0.165));
			this.bmdDrawLineV(bmd, 1, 4, height - 10, this.getHex(0, 0, 0, 0.188)); bmd.setPixel32(1, height - 6, this.getHex(0, 0, 0, 0.161));
			bmd.setPixel32(1, height - 5, this.getHex(0, 0, 0, 0.086)); bmd.setPixel32(1, height - 4, this.getHex(0, 0, 0, 0.027));
			bmd.setPixel32(1, height - 3, this.getHex(0, 0, 0, 0.012)); bmd.setPixel32(1, height - 2, this.getHex(0, 0, 0, 0.004));
			bmd.setPixel32(1, height - 1, this.getHex(0, 0, 0, 0.000));
			// 3-й столбец
			bmd.setPixel32(2, 0, this.getHex(0, 0, 0, 0.008)); bmd.setPixel32(2, 1, this.getHex(0, 0, 0, 0.161));
			bmd.setPixel32(2, 2, this.getHex(0, 0, 0, 0.180)); bmd.setPixel32(2, 3, this.getHex(0, 0, 0, 0.188));
			bmd.setPixel32(2, 4, this.getHex(0, 0, 0, 0.176)); bmd.setPixel32(2, 5, this.getHex(0, 0, 0, 0.165));
			bmd.setPixel32(2, 6, this.getHex(0, 0, 0, 0.157)); this.bmdDrawLineV(bmd, 2, 7, height - 13, this.getHex(0, 0, 0, 0.153));
			bmd.setPixel32(2, height - 6, this.getHex(0, 0, 0, 0.149)); bmd.setPixel32(2, height - 5, this.getHex(0, 0, 0, 0.153));
			bmd.setPixel32(2, height - 4, this.getHex(0, 0, 0, 0.188)); bmd.setPixel32(2, height - 3, this.getHex(0, 0, 0, 0.031));
			bmd.setPixel32(2, height - 2, this.getHex(0, 0, 0, 0.012)); bmd.setPixel32(2, height - 1, this.getHex(0, 0, 0, 0.004));
			// 4-й столбец
			bmd.setPixel32(3, 0, this.getHex(0, 0, 0, 0.078)); bmd.setPixel32(3, 1, this.getHex(0, 0, 0, 0.184));
			bmd.setPixel32(3, 2, this.getHex(0, 0, 0, 0.200)); bmd.setPixel32(3, 3, this.getHex(0, 0, 0, 0.176));
			bmd.setPixel32(3, 4, this.getHex(0, 0, 0, 0.157)); bmd.setPixel32(3, 5, this.getHex(0, 0, 0, 0.133));
			bmd.setPixel32(3, 6, this.getHex(0, 0, 0, 0.129)); this.bmdDrawLineV(bmd, 3, 7, height - 12, this.getHex(0, 0, 0, 0.125));
			bmd.setPixel32(3, height - 5, this.getHex(0, 0, 0, 0.129)); bmd.setPixel32(3, height - 4, this.getHex(0, 0, 0, 0.196));
			bmd.setPixel32(3, height - 3, this.getHex(0, 0, 0, 0.176)); bmd.setPixel32(3, height - 2, this.getHex(0, 0, 0, 0.023));
			bmd.setPixel32(3, height - 1, this.getHex(0, 0, 0, 0.008));
			// 5-й столбец
			bmd.setPixel32(4, 0, this.getHex(0, 0, 0, 0.165)); bmd.setPixel32(4, 1, this.getHex(0, 0, 0, 0.200));
			bmd.setPixel32(4, 2, this.getHex(0, 0, 0, 0.188)); bmd.setPixel32(4, 3, this.getHex(0, 0, 0, 0.165));
			bmd.setPixel32(4, 4, this.getHex(0, 0, 0, 0.133)); bmd.setPixel32(4, 5, this.getHex(0, 0, 0, 0.110));
			this.bmdDrawLineV(bmd, 4, 6, height - 11, this.getHex(0, 0, 0, 0.098)); bmd.setPixel32(4, height - 5, this.getHex(0, 0, 0, 0.102));
			bmd.setPixel32(4, height - 4, this.getHex(0, 0, 0, 0.129)); bmd.setPixel32(4, height - 3, this.getHex(0, 0, 0, 0.274));
			bmd.setPixel32(4, height - 2, this.getHex(0, 0, 0, 0.027)); bmd.setPixel32(4, height - 1, this.getHex(0, 0, 0, 0.012));
			var bm:Bitmap = new Bitmap(bmd);
			bm.x = x; bm.y = y;
			return bm;
		}
		
		/* drawBgDown - нарисовать задник DOWN кнопки
		 * x:int, y:int - позиция в которую перемещаем bm после отрисовки
		 * height:int - высота кнопки
		 */
		protected function drawBgDown(x:int = 0, y:int = 0, height:int = 32):Bitmap
		{
			var bmd:BitmapData = new BitmapData(1, height);
			bmd.setPixel32(0, 0, this.getHex(0, 0, 0, 0.188)); bmd.setPixel32(0, 1, this.getHex(0, 0, 0, 0.204));
			bmd.setPixel32(0, 2, this.getHex(0, 0, 0, 0.176)); bmd.setPixel32(0, 3, this.getHex(0, 0, 0, 0.153));
			bmd.setPixel32(0, 4, this.getHex(0, 0, 0, 0.125)); this.bmdDrawLineV(bmd, 0, 5, height - 8, this.getHex(0, 0, 0, 0.098));
			bmd.setPixel32(0, height - 3, this.getHex(0, 0, 0, 0.298)); bmd.setPixel32(0, height - 2, this.getHex(0, 0, 0, 0.031));
			bmd.setPixel32(0, height - 1, this.getHex(0, 0, 0, 0.016));
			var bm:Bitmap = new Bitmap(bmd);
			bm.x = x; bm.y = y;
			return bm;
		}
		
		/* drawFinishDown - нарисовать конец DOWN кнопки
		 * x:int, y:int - позиция в которую перемещаем bm после отрисовки
		 * height:int - высота кнопки
		 */
		protected function drawFinishDown(x:int = 0, y:int = 0, height:int = 32):Bitmap
		{
			var bmd:BitmapData = new BitmapData(5, height);
			// 5-й столбец
			this.bmdDrawLineV(bmd, 4, 0, 2, this.getHex(0, 0, 0, 0.000)); bmd.setPixel32(4, 2, this.getHex(0, 0, 0, 0.004));
			bmd.setPixel32(4, 3, this.getHex(0, 0, 0, 0.008)); this.bmdDrawLineV(bmd, 4, 4, 2, this.getHex(0, 0, 0, 0.012));
			this.bmdDrawLineV(bmd, 4, 6, height - 12, this.getHex(0, 0, 0, 0.016)); this.bmdDrawLineV(bmd, 4, height - 6, 2, this.getHex(0, 0, 0, 0.012));
			bmd.setPixel32(4, height - 4, this.getHex(0, 0, 0, 0.008)); bmd.setPixel32(4, height - 3, this.getHex(0, 0, 0, 0.004));
			this.bmdDrawLineV(bmd, 4, height - 2, 2, this.getHex(0, 0, 0, 0.000));
			// 4-й столбец
			bmd.setPixel32(3, 0, this.getHex(0, 0, 0, 0.000)); bmd.setPixel32(3, 1, this.getHex(0, 0, 0, 0.008));
			bmd.setPixel32(3, 2, this.getHex(0, 0, 0, 0.078)); bmd.setPixel32(3, 3, this.getHex(0, 0, 0, 0.165));
			this.bmdDrawLineV(bmd, 3, 4, height - 10, this.getHex(0, 0, 0, 0.188)); bmd.setPixel32(3, height - 6, this.getHex(0, 0, 0, 0.161));
			bmd.setPixel32(3, height - 5, this.getHex(0, 0, 0, 0.086)); bmd.setPixel32(3, height - 4, this.getHex(0, 0, 0, 0.027));
			bmd.setPixel32(3, height - 3, this.getHex(0, 0, 0, 0.012)); bmd.setPixel32(3, height - 2, this.getHex(0, 0, 0, 0.004));
			bmd.setPixel32(3, height - 1, this.getHex(0, 0, 0, 0.000));
			// 3-й столбец
			bmd.setPixel32(2, 0, this.getHex(0, 0, 0, 0.008)); bmd.setPixel32(2, 1, this.getHex(0, 0, 0, 0.161));
			bmd.setPixel32(2, 2, this.getHex(0, 0, 0, 0.180)); bmd.setPixel32(2, 3, this.getHex(0, 0, 0, 0.188));
			bmd.setPixel32(2, 4, this.getHex(0, 0, 0, 0.176)); bmd.setPixel32(2, 5, this.getHex(0, 0, 0, 0.165));
			bmd.setPixel32(2, 6, this.getHex(0, 0, 0, 0.157)); this.bmdDrawLineV(bmd, 2, 7, height - 13, this.getHex(0, 0, 0, 0.153));
			bmd.setPixel32(2, height - 6, this.getHex(0, 0, 0, 0.149)); bmd.setPixel32(2, height - 5, this.getHex(0, 0, 0, 0.153));
			bmd.setPixel32(2, height - 4, this.getHex(0, 0, 0, 0.188)); bmd.setPixel32(2, height - 3, this.getHex(0, 0, 0, 0.031));
			bmd.setPixel32(2, height - 2, this.getHex(0, 0, 0, 0.012)); bmd.setPixel32(2, height - 1, this.getHex(0, 0, 0, 0.004));
			// 2-й столбец
			bmd.setPixel32(1, 0, this.getHex(0, 0, 0, 0.078)); bmd.setPixel32(1, 1, this.getHex(0, 0, 0, 0.184));
			bmd.setPixel32(1, 2, this.getHex(0, 0, 0, 0.200)); bmd.setPixel32(1, 3, this.getHex(0, 0, 0, 0.176));
			bmd.setPixel32(1, 4, this.getHex(0, 0, 0, 0.157)); bmd.setPixel32(1, 5, this.getHex(0, 0, 0, 0.133));
			bmd.setPixel32(1, 6, this.getHex(0, 0, 0, 0.129)); this.bmdDrawLineV(bmd, 1, 7, height - 12, this.getHex(0, 0, 0, 0.125));
			bmd.setPixel32(1, height - 5, this.getHex(0, 0, 0, 0.129)); bmd.setPixel32(1, height - 4, this.getHex(0, 0, 0, 0.196));
			bmd.setPixel32(1, height - 3, this.getHex(0, 0, 0, 0.176)); bmd.setPixel32(1, height - 2, this.getHex(0, 0, 0, 0.023));
			bmd.setPixel32(1, height - 1, this.getHex(0, 0, 0, 0.008));
			// 1-й столбец
			bmd.setPixel32(0, 0, this.getHex(0, 0, 0, 0.165)); bmd.setPixel32(0, 1, this.getHex(0, 0, 0, 0.200));
			bmd.setPixel32(0, 2, this.getHex(0, 0, 0, 0.188)); bmd.setPixel32(0, 3, this.getHex(0, 0, 0, 0.165));
			bmd.setPixel32(0, 4, this.getHex(0, 0, 0, 0.133)); bmd.setPixel32(0, 5, this.getHex(0, 0, 0, 0.110));
			this.bmdDrawLineV(bmd, 0, 6, height - 11, this.getHex(0, 0, 0, 0.098)); bmd.setPixel32(0, height - 5, this.getHex(0, 0, 0, 0.102));
			bmd.setPixel32(0, height - 4, this.getHex(0, 0, 0, 0.129)); bmd.setPixel32(0, height - 3, this.getHex(0, 0, 0, 0.274));
			bmd.setPixel32(0, height - 2, this.getHex(0, 0, 0, 0.027)); bmd.setPixel32(0, height - 1, this.getHex(0, 0, 0, 0.012));
			var bm:Bitmap = new Bitmap(bmd);
			bm.x = x; bm.y = y;
			return bm;
		}
		
		/* drawSeparatorDown - нарисовать перегородку DOWN кнопки
		 * x:int, y:int - позиция в которую перемещаем bm после отрисовки
		 * height:int - высота кнопки
		 */
		protected function drawSeparatorDown(x:int = 0, y:int = 0, height:int = 32):Bitmap
		{
			var bmd:BitmapData = new BitmapData(1, height);
			this.bmdDrawLineV(bmd, 0, 0, height - 3, this.getHex(0, 0, 0, 0.188)); bmd.setPixel32(0, height - 3, this.getHex(0, 0, 0, 0.239));
			bmd.setPixel32(0, height - 2, this.getHex(0, 0, 0, 0.039)); bmd.setPixel32(0, height - 1, this.getHex(0, 0, 0, 0.016));
			var bm:Bitmap = new Bitmap(bmd);
			bm.x = x; bm.y = y;
			return bm;
		}
		
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