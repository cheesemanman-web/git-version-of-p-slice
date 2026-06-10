package mikolka.funkin.custom;

import openfl.media.Sound;
import openfl.display.BitmapData;
import openfl.utils.Assets;
import openfl.Assets as OpenFlAssets;

class NativeFileSystem
{
	public static var openFlAssets:Array<String> = [];

	inline static function isMod(path:String):Bool
	{
		return path != null && path.startsWith("mods");
	}

	// ---------------- TEXT ----------------
	public static function getContent(path:String):Null<String>
	{
		if (isMod(path))
			return null; // iOS: no raw filesystem mods

		if (Assets.exists(path, TEXT))
			return Assets.getText(path);

		return null;
	}

	// ---------------- IMAGE ----------------
	public static function getBitmap(path:String):Null<BitmapData>
	{
		if (isMod(path))
			return null;

		if (Assets.exists(path, IMAGE))
			return Assets.getBitmapData(path);

		return null;
	}

	// ---------------- SOUND ----------------
	public static function getSound(path:String):Null<Sound>
	{
		if (isMod(path))
			return null;

		if (Assets.exists(path, SOUND))
			return Assets.getSound(path);

		return null;
	}

	// ---------------- EXISTS ----------------
	public static function exists(path:String):Bool
	{
		if (isMod(path))
			return false;

		return Assets.exists(path);
	}

	// ---------------- DIRECTORY (SAFE FAKE) ----------------
	public static function readDirectory(directory:String):Array<String>
	{
		// iOS cannot scan filesystem → return empty safe list
		if (isMod(directory))
			return [];

		return [];
	}

	public static function isDirectory(directory:String):Bool
	{
		return false;
	}

	public static function createDirectory(path:String):Void {}
	public static function deleteFile(path:String):Void {}
}
