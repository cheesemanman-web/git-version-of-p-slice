#if !macro

import haxe.Exception;

// ================= DISCORD =================
#if DISCORD_ALLOWED
import backend.Discord;
#end

// ================= LUA (DISABLED ON IOS) =================
#if (LUA_ALLOWED && !ios)
import psychlua.Lua;
import psychlua.FunkinLua;
#end

// ================= ACHIEVEMENTS =================
#if ACHIEVEMENTS_ALLOWED
import backend.Achievements;
#end

// ================= MOBILE INPUT =================
import mobile.input.MobileInputID;
import mobile.backend.SwipeUtil;
import mobile.backend.TouchUtil;

// Touch controls (BLOCK iOS if unstable modules exist)
#if (TOUCH_CONTROLS_ALLOWED && !ios)
import mobile.objects.Hitbox;
import mobile.objects.TouchPad;
import mobile.objects.TouchButton;
import mobile.backend.MobileData;
import mobile.input.MobileInputManager;
import mobile.objects.TouchZone;
import mobile.objects.ScrollableObject;
#end

// ================= ANDROID ONLY =================
#if android
import extension.androidtools.content.Context as AndroidContext;
import extension.androidtools.widget.Toast as AndroidToast;
import extension.androidtools.os.Environment as AndroidEnvironment;
import extension.androidtools.Permissions as AndroidPermissions;
import extension.androidtools.Settings as AndroidSettings;
import extension.androidtools.Tools as AndroidTools;
import extension.androidtools.os.Build.VERSION as AndroidVersion;
import extension.androidtools.os.Build.VERSION_CODES as AndroidVersionCode;
#end

// ================= FIREBASE =================
#if FIREBASE_CRASH_HANDLER
import extension.firebase.Crashlytics;
#end

// ================= SYS (DISABLED ON IOS) =================
#if (sys && !ios)
import sys.*;
import sys.io.*;
#end

// ================= JS =================
#if js
import js.html.*;
#end

// ================= P-SLICE ENGINE CORE =================
import mikolka.funkin.custom.NativeFileSystem as NativeFileSystem;
import mikolka.funkin.*;
import mikolka.funkin.utils.*;
import mikolka.funkin.custom.*;
import mikolka.funkin.players.*;

// ================= STAGES =================
import states.FreeplayState as C_;
import states.stages.objects.*;

// ================= CUTSCENES / DIALOGUE =================
import mikolka.stages.cutscenes.dialogueBox.*;
import mikolka.stages.cutscenes.dialogueBox.DialogueBoxPsych.DialogueFile;
import mikolka.stages.cutscenes.dialogueBox.styles.*;

// ================= UTILITIES =================
using StringTools;
using mikolka.funkin.utils.ArrayTools;
using mikolka.funkin.utils.custom.FunkinTools;
using mikolka.funkin.utils.SpriteTools;
using mikolka.funkin.utils.custom.PsychUITools;
using mikolka.funkin.utils.StringTools;

// ================= BACKEND =================
import backend.*;
import backend.ui.*;

// ================= GAME OBJECTS =================
import objects.Alphabet;
import objects.BGSprite;
import states.PlayState;
import states.LoadingState;
import mikolka.vslice.ui.*;

// ================= FLXANIMATE =================
#if flxanimate
import flxanimate.*;
import flxanimate.PsychFlxAnimate as FlxAnimate;
#end

// ================= FLIXEL =================
import flixel.*;
import flixel.sound.FlxSound;
import flixel.util.*;
import flixel.math.*;
import flixel.text.*;
import flixel.tweens.*;
import flixel.group.*;
import flixel.addons.transition.FlxTransitionableState;
import flixel.system.FlxAssets.FlxShader;

#end
