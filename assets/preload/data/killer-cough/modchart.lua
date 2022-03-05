local originalScroll = 0

function start(song)
       changeBoyfriendCharacter('drunk-annie', 630, 290)
    showOnlyStrums = true;
    strumLine1Visible = false;
    strumLine2Visible = false;
    setActorAlpha(0, 'bluescreen', true)

    -- to check da original scroll
    if downscroll == true then
        originalScroll = 0
    else
        originalScroll = 1
    end
end

function update(elapsed)

    if tallDad then
        followDadYOffset = -100
    end

    if tallBF then
        followBFYOffset = -50
    end

    if reset then
        followBFYOffset = 0
        followDadYOffset = 0
    end

end

local randomX = 0
local randomY = 0
local whereStrum = 0

function beatHit(beat)
    if (beat >= 64) then
        showOnlyStrums = false;
        strumLine1Visible = true;
        strumLine2Visible = true;
    end

    if curBeat == 64  or curBeat == 256 or curBeat == 384 or curBeat == 544 then
        followDadYOffset = 0
        followBFYOffset = 0
        setDefaultCamZoom(0.8)
    end

    if curBeat == 255 or curBeat == 316 or curBeat == 830 then
        setDefaultCamZoom(1.7)
    end

    if curBeat == 320 or curBeat == 480 or curBeat == 608 or curBeat == 847 then
        followDadYOffset = 0
        followBFYOffset = 0
        setDefaultCamZoom(0.55)
    end

    if curBeat == 831 then
        followDadYOffset = -200
        followDadXOffset = 50
    end

    if curBeat >= 831 and curBeat < 848 or curBeat >= 316 and curBeat < 320 then
        playActorAnimation('gf', 'scared', true, false)
    end

    if curBeat == 831 or curBeat == 316 then
        stopGFDance(true)
    end

    if curBeat == 848 or curBeat == 320 then
        stopGFDance(false)
    end

    if curBeat == 772 or curBeat == 775 then
        setActorAlpha(1, 'bluescreen', true)
    end

    if curBeat == 773 or curBeat == 776 then
        setActorAlpha(0, 'bluescreen', true)
    end
    
end

function stepHit(step)

    if curStep == 1 then        
       
    end

    if curStep == 404 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 405 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 436 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 437 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 444 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 445 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 1020 then
        changeDadCharacter('garcellodead', -235, 190) 
    end

    if curStep == 1024 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 1040 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 1042 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 1044 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 1045 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 1052 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 1053 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 1104 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 1105 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 1108 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 1109 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 1116 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 1120 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 1152 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 1153 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 1160 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 1161 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 1164 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 1166 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 1178 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 1180 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 1182 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 1184 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 1187 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 1188 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 1192 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 1194 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 1196 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 1198 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 1214 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 1216 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 1264 then
        changeDadCharacter('garcellodead', -235, 190) 
    end

    if curStep == 1280 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 1916 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 1924 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 1940 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 1942 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 1948 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 1950 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 1972 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 1974 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 1980 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 1982 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 2000 then
        changeDadCharacter('garcellodead', -235, 190) 
    end

    if curStep == 2004 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 2012 then
        changeDadCharacter('garcellodead', -235, 190) 
    end

    if curStep == 2016 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 2048 then
        changeDadCharacter('garcellodead', -235, 190) 
    end

    if curStep == 2050 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 2064 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 2070 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 2076 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 2080 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 2128 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 2134 then
        changeDadCharacter('garcello', -235, 190) 
    end

    if curStep == 2140 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 2688 then
        changeDadCharacter('garcellodead', -235, 190) 
    end

    if curStep == 2690 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 2704 then
        changeDadCharacter('garcellodead', -235, 190) 
    end

    if curStep == 2707 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 2716 then
        changeDadCharacter('garcellodead', -235, 190) 
    end

    if curStep == 2717 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 2768 then
        changeDadCharacter('garcellodead', -235, 190) 
    end

    if curStep == 2770 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 2772 then
        changeDadCharacter('garcellodead', -235, 190) 
    end

    if curStep == 2774 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 2780 then
        changeDadCharacter('garcellodead', -235, 190) 
    end

    if curStep == 2782 then
        changeDadCharacter('garcellotired', -235, 190) 
    end

    if curStep == 3068 then
        changeDadCharacter('garcellodead', -235, 190) 
    end

    if curStep == 3088 then
        changeDadCharacter('garcellored', -235, 190) 
    end

    if curStep == 3092 then
        changeDadCharacter('garcellodead', -235, 190) 
    end

    if curStep == 3100 then
        changeDadCharacter('garcellored', -235, 190) 
    end

    if curStep == 3104 then
        changeDadCharacter('garcellodead', -235, 190) 
    end

    if curStep == 3152 then
        changeDadCharacter('garcellored', -235, 190) 
    end

    if curStep == 3156 then
        changeDadCharacter('garcellodead', -235, 190) 
    end

    if curStep == 3164 then
        changeDadCharacter('garcellored', -235, 190) 
    end

    if curStep == 3168 then
        changeDadCharacter('garcellodead', -235, 190) 
    end

    if curStep == 3200 then
        changeDadCharacter('garcellored', -235, 190) 
    end

    if curStep == 3232 then
        changeDadCharacter('garcellodead', -235, 190) 
    end

    if curStep == 3322 then
        tweenFadeOut('dad', 0, 0.2)
    end

end

function dadNoteHit()

    if curStep < 380 then
        shakeCam(0.0125, 0.1)
		shakeHUD(0.005, 0.1)
    end

    --for scream characters without special animations/sounds, i just gave their push back some extra power
    if curStep == 1040 or curStep == 1041 or curStep == 1052 then 
        shakeCam(0.1, 0.1)
    end
   
end