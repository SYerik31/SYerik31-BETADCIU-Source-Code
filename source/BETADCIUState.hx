package;

import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.utils.Assets;
import flixel.effects.FlxFlicker;
import flixel.tweens.FlxTween;
import flixel.addons.ui.FlxInputText;

#if desktop
import Discord.DiscordClient;
#end

using StringTools;

class BETADCIUState extends MusicBeatState
{
	var songs:Array<SongMetadata2> = [];

	var selector:FlxText;
	var curSelected:Int = 0;
	var curDifficulty:Int = 2;

	var scoreText:FlxText;
	var enterText:FlxText;
	var diffText:FlxText;
	var text1:FlxText;
	var text2:FlxText;
	var text3:FlxText;
	var comboText:FlxText;
	var passwordText:FlxInputText;
	var lerpScore:Int = 0;
	var intendedScore:Int = 0;
	var combo:String = '';

	private var grpSongs:FlxTypedGroup<Alphabet>;
	private var curPlaying:Bool = false;
	public static var downscroll:Bool = false;
	public static var inMain:Bool = true;
	public static var canMove:Bool = true;
	var extras:FlxSprite;
	var blackScreen:FlxSprite;

	var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image('menuDesat'));
	var bgManifest:FlxSprite = new FlxSprite().loadGraphic(Paths.image('menuBGManifest'));
	var bgStorm:FlxSprite = new FlxSprite().loadGraphic(Paths.image('menuBGStorm'));
	var trackedAssets:Array<Dynamic> = [];

	//we doin this color shit again
	public var curCol:FlxColor = 0xFFFFFFFF;
	public var songCol:FlxColor = 0xFFE78B07;

	private var iconArray:Array<HealthIcon> = [];

	public var ytIcon:FlxSprite;

	override function create()
	{
		//Main.dumpCache();
		clean();
		if (FlxG.sound.music.volume == 0 || !FlxG.sound.music.playing)
		{
			FlxG.sound.music.volume = 1;
			FlxG.sound.playMusic(Paths.music('freakyMenu'));
		}

		Main.isMegalo = false;

		 #if desktop
		 // Updating Discord Rich Presence
		 DiscordClient.changePresence("In BETADCIU Menu", null);
		 #end

		var isDebug:Bool = false;

		FlxG.mouse.visible = true;
		inMain = true;
		canMove = true;

		#if debug
		isDebug = true;
		#end

			addWeek(['Last-Chance', 'Baka'], 1, ['tabi', 'natsuki']);
			addWeek(['Triple-Trouble', 'Serious', 'Honeydew'], 2, ['exe-trio', 'jack3-1', 'mel']);
			//addWeek(['Intertwined-Ex'], 2, ['ashbera-ex']);
			//addWeek(['Takeover', 'Hands', 'Jeez'], 3, ['demoncass', 'coco-car', 'brody']);
			//addWeek(['Killer-Scream', 'Shotgun-Shell', 'Hill-Of-The-Void'], 4, ['rushia', 'aldryx', 'exe-front']);
			//addWeek(['Cosmic', 'Storm', 'Haachama'], 5, ['kou', 'annie-bw', 'haachama']);
			if (FlxG.save.data.exUnlocked)
			    addSong('Haachama-EX', 5, 'haachama');
			//addWeek(['Scary Swings', 'Kaboom', 'Safety-Lullaby'], 6, ['spooky-pelo', 'demoman', 'hypno']);

		if (TitleState.curWacky[1].contains('iris') && Main.seenMessage)
			addSong('Detected', 7, 'evil-hex');

		// LOAD MUSIC

		// LOAD CHARACTERS

		bg.scrollFactor.x = 0;
		bg.color = curCol;
		add(bg);

		bgManifest.scrollFactor.x = 0;
		bgManifest.alpha = 0;
		add(bgManifest);

		bgStorm.scrollFactor.x = 0;
		bgStorm.alpha = 0;
		add(bgStorm);

		grpSongs = new FlxTypedGroup<Alphabet>();
		add(grpSongs);

		for (i in 0...songs.length)
		{
			var songText:Alphabet = new Alphabet(0, (70 * i) + 30, songs[i].songName, true, false);
			songText.isMenuItem = true;
			songText.targetY = i;
			grpSongs.add(songText);

			var icon:HealthIcon = new HealthIcon(songs[i].songCharacter);
			icon.sprTracker = songText;

			// using a FlxGroup is too much fuss!
			iconArray.push(icon);
			add(icon);

			// songText.x += 40;
			// DONT PUT X IN THE FIRST PARAMETER OF new ALPHABET() !!
			// songText.screenCenter(X);
		}

		scoreText = new FlxText(FlxG.width * 0.7, 5, 0, "", 32);
		// scoreText.autoSize = false;
		scoreText.setFormat(Paths.font("vcr.ttf"), 32, FlxColor.WHITE, RIGHT);
		// scoreText.alignment = RIGHT;

		var scoreBG:FlxSprite = new FlxSprite(scoreText.x - 6, 0).makeGraphic(Std.int(FlxG.width * 0.35), 66, 0xFF000000);
		scoreBG.alpha = 0.6;
		add(scoreBG);

		diffText = new FlxText(scoreText.x, scoreText.y + 36, 0, "", 24);
		diffText.font = scoreText.font;
		add(diffText);

		comboText = new FlxText(diffText.x + 100, diffText.y, 0, "", 24);
		comboText.font = diffText.font;
		add(comboText);

		add(scoreText);

		changeSelection();

		ytIcon = new FlxSprite().loadGraphic(Paths.image('extraIcons'), true, 176, 176);
		ytIcon.setGraphicSize(Std.int(ytIcon.width * 1.2));
		ytIcon.scrollFactor.set();
		ytIcon.screenCenter();
		ytIcon.x += 350;
		ytIcon.y -= 50;
		ytIcon.animation.add('snake', [0]);
		ytIcon.animation.add('syerik31', [1]);
		ytIcon.animation.add('empty', [2]);
		ytIcon.animation.play('syerik31');
		add(ytIcon);

		var text1 = new FlxText(ytIcon.x - 150, ytIcon.y + 220, 0, "This BETADCIU was made by:", 32);
		text1.setFormat(Paths.font("Aller_Rg.ttf"), 36, FlxColor.WHITE, CENTER);
		text1.borderColor = FlxColor.BLACK;
		text1.borderSize = 3;
		text1.borderStyle = FlxTextBorderStyle.OUTLINE;
		text1.bold = true;
		add(text1);

		text2 = new FlxText(ytIcon.x - 150, text1.y + 60, 0, "", 36);
		text2.setFormat('Pixel Arial 11 Bold', 36, FlxColor.RED, CENTER);
		text2.borderColor = FlxColor.BLACK;
		text2.borderSize = 3;
		text2.borderStyle = FlxTextBorderStyle.OUTLINE;
		text2.bold = true;
		add(text2);

		text3 = new FlxText(ytIcon.x - 110, text2.y + 65, 0, "Link to their channel!", 40);
		text3.setFormat(Paths.font("Aller_Rg.ttf"), 40, FlxColor.fromString('#FF0078D4'), CENTER);
		text3.borderColor = FlxColor.BLACK;
		text3.borderSize = 3;
		text3.borderStyle = FlxTextBorderStyle.OUTLINE;
		text3.bold = true;
		add(text3);

		extras = new FlxSprite(scoreText.x + 50, 600).loadGraphic(Paths.image('extras', 'shared'), true, 360, 110);
		extras.animation.add('idle', [0]);
		extras.animation.add('hover', [1]);
		extras.scrollFactor.set();
		extras.setGraphicSize(Std.int(extras.width * 0.8));
		extras.updateHitbox();
		add(extras);

		blackScreen = new FlxSprite(-100, -100).makeGraphic(Std.int(FlxG.width * 0.5), Std.int(FlxG.height * 0.5), FlxColor.BLACK);
		blackScreen.screenCenter();
		blackScreen.scrollFactor.set();
		blackScreen.visible = false;
		add(blackScreen);

		enterText = new FlxText(0, 0, 0, "Enter Password:", 48);
		enterText.setFormat('Pixel Arial 11 Bold', 48, FlxColor.WHITE, CENTER);
		enterText.screenCenter();
		enterText.y -= 100;
		enterText.visible = false;
		add(enterText);

		passwordText = new FlxInputText(0, 300, 550, '', 36, FlxColor.WHITE, FlxColor.BLACK);
		passwordText.fieldBorderColor = FlxColor.WHITE;
		passwordText.fieldBorderThickness = 3;
		passwordText.maxLength = 20;
		passwordText.screenCenter(X);
		passwordText.y += 75;
		passwordText.visible = false;
		add(passwordText);

		// FlxG.sound.playMusic(Paths.music('title'), 0);
		// FlxG.sound.music.fadeIn(2, 0, 0.8);
		selector = new FlxText();

		selector.size = 40;
		selector.text = ">";
		// add(selector);

		var swag:Alphabet = new Alphabet(1, 0, "swag");

		// JUST DOIN THIS SHIT FOR TESTING!!!
		/* 
			var md:String = Markdown.markdownToHtml(Assets.getText('CHANGELOG.md'));

			var texFel:TextField = new TextField();
			texFel.width = FlxG.width;
			texFel.height = FlxG.height;
			// texFel.
			texFel.htmlText = md;

			FlxG.stage.addChild(texFel);

			// scoreText.textField.htmlText = md;

			trace(md);
		 */

		changeBGColor();

		super.create();
	}

	public function addSong(songName:String, weekNum:Int, songCharacter:String)
	{
		songs.push(new SongMetadata2(songName, weekNum, songCharacter));
	}

	public function changeBGColor():Void
	{
		if (songs[curSelected].songName.toLowerCase() == 'manifest' || songs[curSelected].songName.toLowerCase() == 'storm')
		{
			if (songs[curSelected].songName.toLowerCase() == 'manifest')
				FlxTween.tween(bgManifest, {alpha: 1}, 0.5);
			if (songs[curSelected].songName.toLowerCase() == 'storm')
				FlxTween.tween(bgStorm, {alpha: 1}, 0.5);
		}
		else
		{
			switch (songs[curSelected].songName.toLowerCase())
			{
				case 'parish' | 'baka':
					songCol = 0xFFFF2043;
				case 'last-chance':
					songCol = 0xFFFFAF26;
				case 'nerves':
					songCol = 0xFF00FF90;
				case 'roses-remix':
					songCol = 0xFFC16FA5;
				case 'takeover':
					songCol = 0xFF414141;
				case 'hands':
					songCol = 0xFFFF7D1E;
				case 'jeez':
					songCol = 0xFFFFAF26;
				case 'killer-scream':
					songCol = 0xFF17FFB2;
				case 'cosmic':
					songCol = 0xFFFFACDF;
				case 'honeydew':
					songCol = 0xFF00FF90;
				case 'haachama' | 'haachama-ex':
					songCol = 0xFFF7C558;
				case 'scary swings':
					songCol = 0xFFFFA420;
				case 'kaboom':
					songCol = 0xFFF7555A;
				case 'shotgun-shell':
					songCol = 0xFFBA1E24;
				case 'hill-of-the-void':
					songCol = 0xFF0000E5;
				case 'safety-lullaby':
					songCol = 0xFFF9DF44;
				case 'detected':
					songCol = 0xFF2D00;
				case 'intertwined-ex':
				{
				ytIcon.animation.play('snake');
				text2.text = "Skepticsnake";
				text2.color = 0xFF00000;
				text2.x = 790;
				}
			}

			if (bgManifest.alpha > 0)
				FlxTween.tween(bgManifest, {alpha: 0}, 0.5);
			if (bgStorm.alpha > 0)
				FlxTween.tween(bgStorm, {alpha: 0}, 0.5);
			
			FlxTween.color(bg, 0.5, curCol, songCol);
		}
	}

	public function addWeek(songs:Array<String>, weekNum:Int, ?songCharacters:Array<String>)
	{
		if (songCharacters == null)
			songCharacters = ['bf'];

		var num:Int = 0;
		for (song in songs)
		{
			addSong(song, weekNum, songCharacters[num]);

			if (songCharacters.length != 1)
				num++;
		}
	}

	function isOnBtt(xx:Float, yy:Float, dis:Float)
	{
		var xDis = xx - FlxG.mouse.x;
		var yDis = yy - FlxG.mouse.y;
		if (Math.sqrt(Math.pow(xDis, 2) + Math.pow(yDis, 2)) < dis)
		{
			return(true);
		}
		else return(false);
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.sound.music.volume < 0.7)
		{
			FlxG.sound.music.volume += 0.5 * FlxG.elapsed;
		}

		if (FlxG.mouse.overlaps(text3)) //this is like...  way easier than that isOnBtt stuff
		{
			text3.color = 0xFF77BDFF;
			if (FlxG.mouse.justPressed && canMove)
			{
				switch (songs[curSelected].songName.toLowerCase())
				{
					case 'intertwined-ex':
						fancyOpenURL("https://www.youtube.com/channel/UC4Y1bn0cnq153r7VoAem4hg");
					case 'parish' | 'last-chance' | 'baka' | 'triple-trouble' | 'serious' | 'honeydew':
						fancyOpenURL("https://www.youtube.com/channel/UC4Y1bn0cnq153r7VoAem4hg");
				}
				
			}
		}
		else if (!FlxG.mouse.overlaps(text3))
			text3.color = 0xFF0078D4;

		curCol = bg.color;

		if (FlxG.mouse.overlaps(extras))
		{
			extras.animation.play('hover');
			if (FlxG.mouse.justPressed && canMove)
			{
				blackScreen.visible = true;
				enterText.visible = true;
				passwordText.visible = true;
				canMove = false;
			}
		}
		else if (!FlxG.mouse.overlaps(extras))
		{
			extras.animation.play('idle');
		}

		if (passwordText.visible == true)
			inMain = false;

		lerpScore = Math.floor(FlxMath.lerp(lerpScore, intendedScore, 0.4));

		if (Math.abs(lerpScore - intendedScore) <= 10)
			lerpScore = intendedScore;

		scoreText.text = "PERSONAL BEST:" + lerpScore;
		comboText.text = combo + '\n';

		var upP = controls.UP_P;
		var downP = controls.DOWN_P;
		var accepted = controls.ACCEPT;

		if (upP && inMain && canMove)
		{
			changeSelection(-1);
			changeBGColor();
		}
		if (downP && inMain && canMove)
		{
			changeSelection(1);
			changeBGColor();
		}

		if (controls.BACK && inMain && canMove)
		{
			//unloadAssets();
			FlxG.switchState(new MainMenuState());
		}

		if (accepted && inMain && canMove)
		{
			if (FlxG.random.bool(20) && songs[curSelected].songName.toLowerCase() == 'hill-of-the-void')
			{
				curDifficulty = 1;
				Main.isMegalo = true;
				trace ('sans');
			}

			var poop:String = Highscore.formatSong(songs[curSelected].songName.toLowerCase(), curDifficulty);

			trace(poop);

			PlayState.SONG = Song.loadFromJson(poop, songs[curSelected].songName.toLowerCase());
			PlayState.isStoryMode = false;
			PlayState.isBETADCIU = true;
			PlayState.isNeonight = false;
			PlayState.isVitor = false;
			PlayState.isBonus = false;
			PlayState.storyDifficulty = curDifficulty;
			canMove = false;
		
			PlayState.storyWeek = songs[curSelected].week;
			trace('CUR WEEK' + PlayState.storyWeek);
			var llll = FlxG.sound.play(Paths.sound('confirmMenu')).length;
			grpSongs.forEach(function(e:Alphabet){
				if (e.text != songs[curSelected].songName){
					FlxTween.tween(e, {x: -6000}, llll / 1000,{onComplete:function(e:FlxTween){
					
						if (FlxG.keys.pressed.ALT){
							FlxG.switchState(new ChartingState());
						}else{
							LoadingState.loadAndSwitchState(new PlayState());
						}
					}});
				}else{
					FlxFlicker.flicker(e);
					trace(curSelected);
					FlxTween.tween(e, {x: e.x + 20}, llll/1000);
				}	
			});
		}

		if (FlxG.keys.justPressed.ESCAPE && !inMain)
		{
			blackScreen.visible = false;
			enterText.visible = false;
			passwordText.visible = false;
			passwordText.text = '';
			inMain = true;
			canMove = true;
		}	
	
		var wrongPass:Bool = false;

	// i like don't care anymore. I don't even know how funkipedia managed to find them all... just uh good job i guess.
		if (passwordText.text != "" && FlxG.keys.justPressed.ENTER)
		{	
			switch (passwordText.text)
			{
				case 'blantados cover': startSong('Haachama-EX');
				case 'iris': startSong('Detected');
				case 'double trouble': startSong('Shinkyoku');
				case 'norway when': startSong('Norway');
				case 'holofunk yeah': startSong('Sorrow');
				case 'sakuwantsmore': startSong('Promenade');
				default: wrongPass = true;
			}	
		} 
			
		if (wrongPass && !inMain)
		{
			FlxG.sound.play(Paths.soundRandom('missnote', 1, 3, 'shared'));
			passwordText.text = '';
			wrongPass = false;
		}

		#if !switch
		intendedScore = Highscore.getScore(songs[curSelected].songName, curDifficulty);
		combo = Highscore.getCombo(songs[curSelected].songName, curDifficulty);
		#end

		switch (curDifficulty)
		{
			case 0:
				diffText.text = "EASY";
			case 1:
				diffText.text = 'NORMAL';
			case 2:
				diffText.text = "HARD";
		}
	}

	function startSong(songName:String):Void
	{
		FlxG.sound.music.stop();
		FlxG.sound.play(Paths.sound('ANGRY_TEXT_BOX', 'shared'));
		Main.isHidden = true;

		var songFormat = StringTools.replace(songName, " ", "-");
		switch (songFormat) {
			case 'Dad-Battle': songFormat = 'Dadbattle';
			case 'Philly-Nice': songFormat = 'Philly';
			case 'Scary-Swings': songFormat = 'Scary Swings';
		}

		var poop:String = Highscore.formatSong(songFormat, curDifficulty);

		PlayState.SONG = Song.loadFromJson(poop, songName);
		PlayState.isStoryMode = false;
		PlayState.isBETADCIU = true;
		PlayState.isBonus = false;
		PlayState.isVitor = false;
		PlayState.isNeonight = false;
		PlayState.storyDifficulty = curDifficulty;
		PlayState.storyWeek = 8;
		trace('CUR WEEK: EXTRA WEEK');
		LoadingState.loadAndSwitchState(new PlayState());
	}

	function changeSelection(change:Int = 0)
	{
		#if !switch
		// NGio.logEvent('Fresh');
		#end

		// NGio.logEvent('Fresh');
		FlxG.sound.play(Paths.sound('scrollMenu'), 0.4);

		curSelected += change;

		if (curSelected < 0)
			curSelected = songs.length - 1;
		if (curSelected >= songs.length)
			curSelected = 0;

		// selector.y = (70 * curSelected) + 30;

		#if !switch
		intendedScore = Highscore.getScore(songs[curSelected].songName, curDifficulty);
		combo = Highscore.getCombo(songs[curSelected].songName, curDifficulty);
		// lerpScore = 0;
		#end

		var bullShit:Int = 0;

		for (i in 0...iconArray.length)
		{
			iconArray[i].alpha = 0.6;
		}

		iconArray[curSelected].alpha = 1;

		for (item in grpSongs.members)
		{
			item.targetY = bullShit - curSelected;
			bullShit++;

			item.alpha = 0.6;
			// item.setGraphicSize(Std.int(item.width * 0.8));

			if (item.targetY == 0)
			{
				item.alpha = 1;
				// item.setGraphicSize(Std.int(item.width));
			}
		}
	}

	override function add(Object:flixel.FlxBasic):flixel.FlxBasic
	{
		trackedAssets.insert(trackedAssets.length, Object);
		return super.add(Object);
	}
	
	function unloadAssets():Void
	{
		for (asset in trackedAssets)
		{
			remove(asset);
		}
	}	
}

class SongMetadata2
{
	public var songName:String = "";
	public var week:Int = 0;
	public var songCharacter:String = "";

	public function new(song:String, week:Int, songCharacter:String)
	{
		this.songName = song;
		this.week = week;
		this.songCharacter = songCharacter;
	}
}
