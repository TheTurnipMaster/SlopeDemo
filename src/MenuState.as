package
{
	import org.flixel.*;
	
	public class MenuState extends FlxState
	{
		//Import Cursor Graphic
		[Embed(source="assets/cursor.png")] public var ImgCursor:Class;
		
		public var playButton:FlxButton;
		public var title1:FlxText;
		public var timer:Number;
		public var attractMode:Boolean;
		
		//Buttons
		public var startButton:FlxButton = new FlxButton(FlxG.width/2-40,FlxG.height/3+64,"Play",onPlay);
		
		
		public function MenuState()
		{
			super();
		}
		
		override public function create():void
		{
			FlxG.bgColor = 0xff050510;
				
			var title:FlxText;
			text = new FlxText(FlxG.width/2-100,FlxG.height/3-30,200,"Slope Demo")
			text.alignment = "center";
			text.color = 0x9999ff;
			text.size = 20;
			add(text);

			var text:FlxText;
			text = new FlxText(FlxG.width/2-50,FlxG.height/3,200,"by Peter Christiansen")
			text.alignment = "center";
			text.color = 0x9999ff;
			add(text);
			
			//var startButton:FlxButton = new FlxButton(FlxG.width/2-40,FlxG.height/3+64,"play",onPlay);
			startButton.color = 0x666699;
			startButton.label.color = 0x9999ff;
			add(startButton);
			
			
			FlxG.mouse.show(ImgCursor,2);
			
		}
		
		override public function update():void
		{
			super.update();
		}

		
		protected function onPlay():void
		{
			FlxG.switchState(new PlayState());
			
		}
		
	
		
		
		
	}
}