package;

import openfl.display.Sprite;
import openfl.text.TextField;
import openfl.text.TextFieldAutoSize;
import openfl.events.Event;

class Dialogue extends Sprite
{

	private var _char:TextField;
	private var _dialogue:TextField;
	private var _background:Sprite;
	
	public var Say(get, set):String;
	function get_Say() return _dialogue.text;
	function set_Say(val) { _dialogue.text = val; redraw(); return val; }
	
	public var Character(get, set):String;
	function get_Character() return _char.text;
	function set_Character(val) { _char.text = val; redraw(); return val; }
	
	public var CharColour(get, set):Int;
	function get_CharColour() return _char.textColor;
	function set_CharColour(val) return _char.textColor = val;
	
	public function new() 
	{
		super();
		
		_char = new TextField();
		_char.defaultTextFormat = Fonts.GetFormat('main-bold', 14, 0x0000FF);
		_char.autoSize = TextFieldAutoSize.LEFT;
		_char.embedFonts = true;
		_char.wordWrap = false;
		_char.selectable = false;
		_char.x = 5;
		_char.y = 5;
		
		_background = new Sprite();
		_background.graphics.beginFill(0x000000, .8);
		_background.graphics.drawRect(0, 0, 848, 150);
		
		_dialogue = new TextField();
		_dialogue.defaultTextFormat = Fonts.GetFormat('main', 11, 0xFFFFFF);
		_dialogue.width = 770;
		_dialogue.height = height - 15;
		_dialogue.embedFonts = true;
		_dialogue.wordWrap = true;
		_dialogue.selectable = false;
		
		addEventListener(Event.ADDED_TO_STAGE, init);
	}
	
	private function init(e:Event):Void
	{
		removeEventListener(Event.ADDED_TO_STAGE, init);
		
		addChild(_background);
		addChild(_char);
		addChild(_dialogue);
		
		redraw();
	}
	
	private function redraw():Void
	{
		if (Character == "")
			_dialogue.y = 5;
		else
			_dialogue.y = 30;
			
		_dialogue.x = 5;
	}
	
}