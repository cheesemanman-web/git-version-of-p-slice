#if !macro

import haxe.Exception;

// ================= DISCORD =================
#if DISCORD_ALLOWED
import backend.Discord;
#end

// ================= LUA =================
#if LUA_ALLOWED
import psychlua.Lua;
import psychlua.FunkinLua;
#end

// ================= ACHIEVEMENTS =================
#if ACHIEVEMENTS_ALLOWED
import backend.Achievements;
#end

// ================= MOBILE (SAFE GUARDS ADDED) =================
#if (android || ios)
import mobile.input.MobileInputID;
import mobile.backend.SwipeUtil;
import mobile.backend.TouchUtil;
#end

#if TOUCH_CONTROLS_ALLOWED
import mobile.objects.*;
import mobile.backend.MobileData;
import mobile.input.MobileInputManager;
#end

// ================= ANDROID =================
#if android
import extension.androidtools.*;
#end

// ================= CRASH =================
#if FIREBASE_CRASH_HANDLER
import extension.firebase.Crashlytics;
#end

// ================= SYS / JS (FIXED FOR CI) =================
#if sys
import sys.io.File;
import sys.FileSystem;
#elseif js
import js.html.*;
#end

// ================= CORE =================
import mikolka.funkin.custom.NativeFileSystem;
import mikolka.funkin.*;
import mikolka.funkin.utils.*;
import mikolka.funkin.custom.*;
import mikolka.funkin.players.*;

// ================= STAGES =================
import states.FreeplayState;
import states.stages.objects.*;

// ================= BACKEND =================
import backend.*;

// ================= FLIXEL =================
import flixel.*;
import flixel.util.*;
import flixel.math.*;
import flixel.text.*;
import flixel.tweens.*;
import flixel.group.*;

#end
