package
{
	import flash.display.Sprite;
	
	import org.flixel.*;
	[SWF(width="640", height="480", backgroundColor="#000000")]
	
	public class SlopeDemo extends FlxGame
	{
		public static var globalHealth:int;
		
		public function SlopeDemo()
		{
			super(320,240,MenuState,2);
		}
	}
}