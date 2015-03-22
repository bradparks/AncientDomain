package;

import openfl.display.Sprite;
import openfl.Lib;
import hscript.Interp;
import hscript.Parser;
import openfl.text.TextField;
import openfl.Assets;
import openfl.events.MouseEvent;
import openfl.events.KeyboardEvent;
import openfl.events.Event;
import haxe.Json;
import hscript.Expr.Error;
import openfl.display.StageScaleMode;

class Main extends Sprite 
{

	private var _charButton:TopBarButton;
	
	public function new() 
	{
		super();
		
		Lib.current.stage.scaleMode = StageScaleMode.EXACT_FIT;
		
		_charButton = new TopBarButton();
		_charButton.Text = "Character";
		
		addEventListener(Event.ADDED_TO_STAGE, init);
	}
	
	private function init(e:Event):Void 
	{
		removeEventListener(Event.ADDED_TO_STAGE, init);

		addChild(_charButton);
	}
	
}
