package;

import openfl.display.DisplayObjectContainer;
import openfl.Lib;

class Layout
{

	public function new() 
	{
		
	}
	
	public static function Align(child:DisplayObjectContainer, style:AlignStyle):Void
	{
		if (style == AlignStyle.CenterRight)
			child.x = child.parent.width - child.width;
		else if (style == AlignStyle.Bottom)
			child.y = child.parent.height - child.height;
		else if (style == AlignStyle.Top)
			child.x = 0;
	}
	
}

enum AlignStyle
{
	Top;
	TopLeft;
	TopRight;
	Center;
	CenterLeft;
	CenterRight;
	Bottom;
	BottomLeft;
	BottomRight;
}