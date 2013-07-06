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
		//protected var _height:int = 30;
		
		public function Button() 
		{
			super()
			
			/* нарисовать неактивную кнопку */
			this.addChild(this.drawStartDisable());
			for (var i:uint = 0; i < this._width - 8; i++) this.addChild(this.drawBgDisable(4 + i));
			//this.addChild(this.drawSeparatorDisable(this._width - 4));
			this.addChild(this.drawFinishDisable(this._width - 4));
		}
		
/* UP BUTTONS - активная кнопка, не нажата и не под курсором
**************************************************************************************************/
		
/* OVER BUTTONS - кнопка под курсором
**************************************************************************************************/
		
/* DOWN BUTTONS - нажатая кнопка
**************************************************************************************************/
		
/* DISABLE - неактивная кнопка
**************************************************************************************************/
		
		/* drawStartDisable - нарисовать начало неактивной кнопки
		 * x:int, y:int - позиция в которую перемещаем bm после отрисовки
		 * height:int - высота кнопки
		 */
		protected function drawStartDisable(x:int = 0, y:int = 0, height:int = 30):Bitmap
		{
			var bmd:BitmapData = new BitmapData(4, height);
			// 1-й столбец
			bmd.setPixel32(0, 0, this.getHex(0, 0, 0, 0.000));
			bmd.setPixel32(0, 1, this.getHex(0, 0, 0, 0.004));
			bmd.setPixel32(0, 2, this.getHex(0, 0, 0, 0.043));
			bmd.setPixel32(0, 3, this.getHex(0, 0, 0, 0.106));
			this.bmdDrawLineV(bmd, 0, 4, height - 7, this.getHex(0, 0, 0, 0.121));
			bmd.setPixel32(0, height - 4, this.getHex(0, 0, 0, 0.106));
			bmd.setPixel32(0, height - 3, this.getHex(0, 0, 0, 0.043));
			bmd.setPixel32(0, height - 2, this.getHex(0, 0, 0, 0.004));
			bmd.setPixel32(0, height - 1, this.getHex(0, 0, 0, 0.000));
			// 2-й столбец
			bmd.setPixel32(1, 0, this.getHex(0, 0, 0, 0.004));
			bmd.setPixel32(1, 1, this.getHex(0, 0, 0, 0.098));
			bmd.setPixel32(1, 2, this.getHex(0, 0, 0, 0.074));
			this.bmdDrawLineV(bmd, 1, 3, height - 6, this.getHex(0, 0, 0, 0.063));
			bmd.setPixel32(1, height - 3, this.getHex(0, 0, 0, 0.078));
			bmd.setPixel32(1, height - 2, this.getHex(0, 0, 0, 0.118));
			bmd.setPixel32(1, height - 1, this.getHex(0, 0, 0, 0.004));
			// 3-й столбец
			bmd.setPixel32(2, 0, this.getHex(0, 0, 0, 0.051));
			bmd.setPixel32(2, 1, this.getHex(0, 0, 0, 0.074));
			this.bmdDrawLineV(bmd, 2, 2, height - 4, this.getHex(0, 0, 0, 0.063));
			bmd.setPixel32(2, height - 2, this.getHex(0, 0, 0, 0.118));
			bmd.setPixel32(2, height - 1, this.getHex(0, 0, 0, 0.106));
			// 4-й столбец
			bmd.setPixel32(3, 0, this.getHex(0, 0, 0, 0.106));
			this.bmdDrawLineV(bmd, 3, 1, height - 3, this.getHex(0, 0, 0, 0.063));
			bmd.setPixel32(3, height - 2, this.getHex(0, 0, 0, 0.078));
			bmd.setPixel32(3, height - 1, this.getHex(0, 0, 0, 0.176));
			
			var bm:Bitmap = new Bitmap(bmd);
			bm.x = x;
			bm.y = y;
			return bm;
		}
		
		/* drawBgDisable - нарисовать задник неактивной кнопки
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
			bm.x = x;
			bm.y = y;
			return bm;
		}
		
		/* drawFinishDisable - нарисовать конец неактивной кнопки
		 * x:int, y:int - позиция в которую перемещаем bm после отрисовки
		 * height:int - высота кнопки
		 */
		protected function drawFinishDisable(x:int = 0, y:int = 0, height:int = 30):Bitmap
		{
			var bmd:BitmapData = new BitmapData(4, height);
			// 4-й столбец
			bmd.setPixel32(3, 0, this.getHex(0, 0, 0, 0.000));
			bmd.setPixel32(3, 1, this.getHex(0, 0, 0, 0.004));
			bmd.setPixel32(3, 2, this.getHex(0, 0, 0, 0.043));
			bmd.setPixel32(3, 3, this.getHex(0, 0, 0, 0.106));
			this.bmdDrawLineV(bmd, 3, 4, height - 7, this.getHex(0, 0, 0, 0.121));
			bmd.setPixel32(3, height - 4, this.getHex(0, 0, 0, 0.106));
			bmd.setPixel32(3, height - 3, this.getHex(0, 0, 0, 0.043));
			bmd.setPixel32(3, height - 2, this.getHex(0, 0, 0, 0.004));
			bmd.setPixel32(3, height - 1, this.getHex(0, 0, 0, 0.000));
			// 3-й столбец
			bmd.setPixel32(2, 0, this.getHex(0, 0, 0, 0.004));
			bmd.setPixel32(2, 1, this.getHex(0, 0, 0, 0.098));
			bmd.setPixel32(2, 2, this.getHex(0, 0, 0, 0.074));
			this.bmdDrawLineV(bmd, 2, 3, height - 6, this.getHex(0, 0, 0, 0.063));
			bmd.setPixel32(2, height - 3, this.getHex(0, 0, 0, 0.078));
			bmd.setPixel32(2, height - 2, this.getHex(0, 0, 0, 0.118));
			bmd.setPixel32(2, height - 1, this.getHex(0, 0, 0, 0.004));
			// 2-й столбец
			bmd.setPixel32(1, 0, this.getHex(0, 0, 0, 0.051));
			bmd.setPixel32(1, 1, this.getHex(0, 0, 0, 0.074));
			this.bmdDrawLineV(bmd, 1, 2, height - 4, this.getHex(0, 0, 0, 0.063));
			bmd.setPixel32(1, height - 2, this.getHex(0, 0, 0, 0.118));
			bmd.setPixel32(1, height - 1, this.getHex(0, 0, 0, 0.106));
			// 1-й столбец
			bmd.setPixel32(0, 0, this.getHex(0, 0, 0, 0.106));
			this.bmdDrawLineV(bmd, 0, 1, height - 3, this.getHex(0, 0, 0, 0.063));
			bmd.setPixel32(0, height - 2, this.getHex(0, 0, 0, 0.078));
			bmd.setPixel32(0, height - 1, this.getHex(0, 0, 0, 0.176));
			
			var bm:Bitmap = new Bitmap(bmd);
			bm.x = x;
			bm.y = y;
			return bm;
		}
		
		/* drawSeparatorDisable - нарисовать перегородку неактивной кнопки
		 * x:int, y:int - позиция в которую перемещаем bm после отрисовки
		 * height:int - высота кнопки
		 */
		protected function drawSeparatorDisable(x:int = 0, y:int = 0, height:int = 30):Bitmap
		{
			var bmd:BitmapData = new BitmapData(1, height);
			this.bmdDrawLineV(bmd, 0, 0, height - 1, this.getHex(0, 0, 0, 0.165));
			bmd.setPixel32(0, height - 1, this.getHex(0, 0, 0, 0.169));
			
			var bm:Bitmap = new Bitmap(bmd);
			bm.x = x;
			bm.y = y;
			return bm;
		}
		
	}

}