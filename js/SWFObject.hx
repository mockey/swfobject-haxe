// extern for SWFObject 2.2
// docs: http://code.google.com/p/swfobject/wiki/api

package js;

import js.Dom;

extern class SWFObject {
	static var ua:DetectedUserAgent;
	
	static function embedSWF(swf:String, repl:String, w:String, h:String, ver:String
	, ?express:String, ?flashvars:{}, ?params:Params, ?attrs:OptAttribs
	, ?callb:CallbackEvent->Void):Void;
	static function getFlashPlayerVersion():Version;
	static function hasFlashPlayerVersion(ver:String):Bool; //"major.minor.release"
	static function createSWF(attrs:Attribs, params:Params, repl:String):HtmlDom;
	static function removeSWF(id:String):Void;
	static function switchOffAutoHideShow():Void;
	
	private static function __init__():Void untyped {
		js.SWFObject = window.swfobject;
	}
}

private typedef DetectedUserAgent = {
	w3:Bool,
	pv:Array<Int>,
	wk:String,
	ie:Bool,
	win:Bool,
	mac:Bool
}

private typedef CallbackEvent = {
	success:Bool,
	id:String,
	ref:HtmlDom
}

private typedef OptAttribs = {
	?id:String,
	?align:String,
	?styleclass:String
}

private typedef Attribs = {> OptAttribs,
	data:String,
	width:String,
	height:String
}

private typedef Params = {
	?play:Bool,					//default: true
	?loop:Bool,					//default: true
  ?menu:Bool,					//default: true
  ?quality:String,		//Possible values: low, autolow, autohigh, medium, high, best
  ?scale:String,			//Possible values: showall*, noborder, exactfit, noscale
  ?align:String,			//Possible values: l, t, r
  ?salign:String,			//Possible values: l, t, r, tl, tr
  ?wmode:String,			//Possible values: window*, direct, opaque, transparent, gpu
  ?bgcolor:String,		//#RRGGBB
  ?base:String,
  ?flashvars:String,	//key=value pairs, separated by "&", max. 64 KB (65535 bytes)
  ?allowFullScreen:Bool,					//default: false
  ?fullScreenAspectRatio:String,	//Possible values: portrait, landscape
  ?allowScriptAccess:String,			//Possible values: always, sameDomain*, never
  ?allowNetworking:String,				//Possible values: all*, internal, none
  ?seamlessTabbing:Bool						//default: false
}

private typedef Version = {
	major:Int,
	minor:Int,
	release:Int
}
