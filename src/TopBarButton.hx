package;

import openfl.display.Bitmap;
import openfl.display.Sprite;
import openfl.Assets;
import openfl.events.Event;
import openfl.text.TextField;
import openfl.text.TextFieldAutoSize;
import openfl.events.MouseEvent;

class TopBarButton extends Sprite
{
	private var _base:Bitmap;
	private var _back:Bitmap;
	private var _backOver:Bitmap;
	private var _backDown:Bitmap;
	private var _text:TextField;
	
	public var Text(get, set):String;
	function get_Text() return _text.text;
	function set_Text(val) return _text.text = val;

	public function new() 
	{
		super();
		
		_back = new Bitmap(Assets.getBitmapData("img/TopBarButton.png"));
		_backOver = new Bitmap(Assets.getBitmapData("img/TopBarButtonOver.png"));
		_backDown = new Bitmap(Assets.getBitmapData("img/TopBarButtonDown.png"));
		_base = _back;
		
		_text = new TextField();
		_text.defaultTextFormat = Fonts.GetFormat('main-bold', 12, 0xFFFFFF);
		_text.autoSize = TextFieldAutoSize.LEFT;
		_text.selectable = false;
		_text.embedFonts = true;
		_text.wordWrap = false;
		_text.x = _text.width / 2;
		_text.y = 1;
		
		addEventListener(MouseEvent.MOUSE_OVER, mouseOver);
		addEventListener(MouseEvent.MOUSE_DOWN, mouseDown);
		addEventListener(MouseEvent.MOUSE_OUT, mouseOut);
		addEventListener(MouseEvent.MOUSE_UP, mouseUp);
		
		addEventListener(Event.ADDED_TO_STAGE, init);
	}
	
	private function init(e:Event):Void
	{
		removeEventListener(Event.ADDED_TO_STAGE, init);
		
		addChild(_base);
		addChild(_text);
	}
	
	private function mouseOver(e:MouseEvent):Void
	{
		_base = _backOver;
	}
	
	private function mouseDown(e:MouseEvent):Void
	{
		_base = _backDown;
	}
	
	private function mouseOut(e:MouseEvent):Void
	{
		_base = _back;
	}
	
	private function mouseUp(e:MouseEvent):Void
	{
		_base = _backOver;
	}
	
}