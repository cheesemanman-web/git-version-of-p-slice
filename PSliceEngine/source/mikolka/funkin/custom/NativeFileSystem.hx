package mikolka.funkin.custom;

import openfl.media.Sound;
import openfl.display.BitmapData;
import openfl.utils.Assets;

class NativeFileSystem
{
    // =========================
    // TEXT
    // =========================
    public static function getContent(path:String):Null<String>
    {
        return Assets.exists(path) ? Assets.getText(path) : null;
    }

    // =========================
    // IMAGE
    // =========================
    public static function getBitmap(path:String):Null<BitmapData>
    {
        return Assets.exists(path) ? Assets.getBitmapData(path) : null;
    }

    // =========================
    // SOUND
    // =========================
    public static function getSound(path:String):Null<Sound>
    {
        return Assets.exists(path) ? Assets.getSound(path) : null;
    }

    // =========================
    // EXISTS
    // =========================
    public static function exists(path:String):Bool
    {
        return Assets.exists(path);
    }

    // =========================
    // DIRECTORY (NO SYS ON MOBILE)
    // =========================
    public static function readDirectory(path:String):Array<String>
    {
        return [];
    }
}
