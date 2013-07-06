package com.sslivka.mycomp
{
	
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.text.Font;
	
	/* Component - основной родительский класс
	 * 
	 */
	public class Component extends Sprite
	{
		
		[Embed(source="assets/arial.swf", fontFamily="arial")]
		protected var Arial:Class;
		protected var arial:Font = new Arial();
		
		public function Component()
		{
			
		}
		
		/* bmdDrawLineH - нарисовать горизонтальную линию
		 * bmd:BitmapData - объект BitmapData
		 * x:int, y:int - позиция от которой начинается рисование
		 * length:int - длина линии
		 * color:uint - цвет линии в формате (0xAARRGGBB)
		 */
		protected function bmdDrawLineH(bmd:BitmapData, x:int, y:int, length:int, color:uint):void
		{
			for (var i:uint = 0; i < length; i++) {
				bmd.setPixel32(x + i, y, color);
			}
		}
		
		/* bmdDrawLineH - нарисовать вертикальную линию
		 * bmd:BitmapData - объект BitmapData
		 * x:int, y:int - позиция от которой начинается рисование
		 * length:int - длина линии
		 * color:uint - цвет линии в формате (0xAARRGGBB)
		 */
		protected function bmdDrawLineV(bmd:BitmapData, x:int, y:int, length:int, color:uint):void
		{
			for (var i:uint = 0; i < length; i++) {
				bmd.setPixel32(x, y + i, color);
			}
		}
		
		/* bmdDrawRec - нарисовать прямоугольник
		 * bmd:BitmapData - объект BitmapData
		 * x:int, y:int - позиция от которой начинается рисование
		 * width:int, height:int - размеры прямоугольника
		 * color:uint - цвет линии в формате (0xAARRGGBB)
		 */
		protected function bmdDrawRec(bmd:BitmapData, x:int, y:int, width:int, height:int, color:uint):void
		{
			for (var i:uint = 0; i < width; i++) {
				for (var j:uint = 0; j < height; j++) {
					bmd.setPixel32(x + i, y + j, color);
				}
			}
		}
		
		/* getHex - перевести из RGB в Hex
		 * r:int, g:int, b:int - значение интенсивности соответственно красной, зеленой и синей составляющих цвета (0-255)
		 * alpha:Number - значение непрозрачности (0-1)
		 */
		protected function getHex(r:int, g:int, b:int, alpha:Number = 1.0):uint
		{
			var _alpha:int = alpha * 255;
			return (_alpha<<24)|(r<<16)|(g << 8)|b;
		}
		
	}

}