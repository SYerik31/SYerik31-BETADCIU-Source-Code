function start (song)
	print("Song then " .. song .. " @ " .. bpm .. " downscroll then " .. downscroll)
        changeDadCharacter('soul-tails', 0, 340)
    setActorAlpha(0, 'dad1')
    setActorAlpha(0, 'dad2')
    setActorVisibility(false, 'boyfriend1')
    setActorVisibility(false, 'boyfriend2') 
end

local defaultHudX = 0
local defaultHudY = 0

local defaultWindowX = 0
local defaultWindowY = 0

local lastStep = 0

local dadX = 0
local dadY = 0
local boyfriendX = 0
local boyfriendY = 0

function update (elapsed)
    local currentBeat = (songPos / 1000)*(bpm/60)

    for i = 2,2 do
        setActorAlpha(0, i)
    end
end

function beatHit (beat)

    -- not this time

end

function stepHit (step)

    if curStep == 144 then
        changeDadCharacter('tails', -180, 250)
    end

    if curStep == 208 then
        changeBoyfriendCharacter('sonic-forced', 430, 250)
    end

    if curStep == 272 then
        changeDadCharacter('botan', -180, 250)
    end

    if curStep == 328 then
        changeDadCharacter('botan-aloe', -180, 250)
        changeBoyfriendCharacter('bf-aloe', 430, 370)
    end

    if curStep == 1 then
        --setDefaultCamZoom(1.1)
    end

    if curStep == 400 then
        changeDadCharacter('kapi', -180, 0)
        changeBoyfriendCharacter('bf-sky', 430, 300)
    end

    if curStep == 528 then
        changeBoyfriendCharacter('ron', 430, 300)
    end

    if curStep == 592 then
        changeDadCharacter('tails-doll', -100, 80)
    end

    if curStep == 784 then
        changeDadCharacter('sunky', -350, 80)
    end

    if curStep == 792 then
        changeBoyfriendCharacter('fleetway', 580, -190)
        characterZoom('bf', 0.65)
    end

    if curStep == 916 then
        changeBoyfriendCharacter('void', 460, 30)
    end

    if curStep == 980 then
        changeDadCharacter('nyancat', -50, 40)
    end

    if curStep == 1040 then
        setDefaultCamZoom(0.9)
        changeDadCharacter('beast-sonic', -180, 5.25)
        changeBoyfriendCharacter('bf-sonic', 566, 435)
        followDadXOffset = 100
    end

    if curStep == 1168 then
        changeDadCharacter('ruv', -180, 0)
    end

    if curStep == 1176 then
        changeBoyfriendCharacter('selever', 580, 0)
    end

    if curStep == 1184 then
        changeDadCharacter('grace', -150, 200)
    end

    if curStep == 1192 then
        changeBoyfriendCharacter('bf-soft', 580, 300)
    end

    if curStep == 1200 then
        changeDadCharacter('arch', -180, 0)
    end

    if curStep == 1208 then
        changeBoyfriendCharacter('bf-bbpanzu', 580, 300)
    end

    if curStep == 1216 then
        changeDadCharacter('bob2', -180, 100)
    end

    if curStep == 1224 then
        changeBoyfriendCharacter('bosip', 580, 100)
    end

    if curStep == 1232 then
        changeDadCharacter('eteled', -180, 140)
    end

    if curStep == 1240 then
        changeBoyfriendCharacter('matt', 580, 300)
    end

    if curStep == 1248 then
        changeDadCharacter('hallow', -50, 0)
    end

    if curStep == 1256 then
        changeBoyfriendCharacter('fliqpy', 580, 300)
    end

    if curStep == 1264 then
        changeDadCharacter('testis', -50, 60)
        changeBoyfriendCharacter('whitty', 580, 60)
    end

    if curStep == 1296 then
        setDefaultCamZoom(1.1)
        changeDadCharacter('soul-knucks-flipped', 1255, 325)
        changeBoyfriendCharacter('maijin-new-flipped', 400, 100)
        setActorFlipX(true, 'boyfriend')
        setActorFlipX(true, 'dad')
        for i = 0,4 do
            tweenXPsych(i, _G['defaultStrum'..i..'X'] + 700, 0.1, 'quartout')
        end
        for i = 5,9 do
            tweenXPsych(i, _G['defaultStrum'..i..'X'] - 600, 0.1, 'quartout')
        end
        followBFXOffset = 300
        followDadXOffset = -200
    end

    if curStep == 1424 then
        changeDadCharacter('aldryx-flipped', 1255, 100)
    end

    if curStep == 1544 then
        changeDadCharacter('herobrine-flipped', 1000, 100)
    end

    if curStep == 1488 then
        changeBoyfriendCharacter('agoti-flipped', 400, 100)
    end

    if curStep == 1608 then
        changeBoyfriendCharacter('aflac-flipped', 400, 430)
    end

    if curStep == 1680 then
        changeBoyfriendCharacter('senpaighosty-flipped', 400, 200)
        changeDadCharacter('monika-real-flipped', 1255, 200)
        characterZoom('dad', 0.8)
    end

    if curStep == 1892 then
        changeBoyfriendCharacter('miku-flipped', 400, 100)
    end

    if curStep == 1938 then
        changeDadCharacter('mami-holy-flipped', 1155, 0)
    end

    if curStep == 2119 then
        changeBoyfriendCharacter('bf-nene-flipped', 400, 430)
    end

    if curStep == 2128 then
        changeDadCharacter('calli-flipped', 1155, 130)
    end

    if curStep == 2320 then
        setDefaultCamZoom(0.9)
        changeDadCharacter('glitched-bob-flipped', 700, 300)
        changeBoyfriendCharacter('little-man-flipped', 300, 560)
        setActorFlipX(true, 'boyfriend')
        setActorFlipX(true, 'dad')
        followBFXOffset = 400
        followDadXOffset = -450
    end

    if curStep == 2580 then
        changeDadCharacter('blantad-powers-flipped', 955, 0)
    end

    if curStep == 2708 then
        changeBoyfriendCharacter('neonight-flipped', 300, 50)
    end

    if curStep == 2823 then
        followBFXOffset = 0
        followDadXOffset = -250
        setDefaultCamZoom(1)
        for i = 0,4 do
            tweenXPsych(i, _G['defaultStrum'..i..'X'], 0.1, 'quartout')
        end
        for i = 5,9 do
            tweenXPsych(i, _G['defaultStrum'..i..'X'], 0.1, 'quartout')
        end
        changeDadCharacter('eggdickface', 61.15, 200)
        changeBoyfriendCharacter('neonight', 666, 215)
    end

    if curStep == 2896 then
        changeBoyfriendCharacter('lord-x', 666, 135)
    end

    if curStep == 2960 then
        changeDadCharacter('cassandra', -180, 125)
    end

    if curStep == 3024 then
        changeBoyfriendCharacter('pico', 430, 370)
    end

    if curStep == 3088 then
        changeDadCharacter('daidem', -250, -40)
    end

    if curStep == 3152 then
        changeBoyfriendCharacter('bf-six', 430, 370)
    end

    if curStep == 3216 then
        changeDadCharacter('garcello', -290, 100)
    end

    if curStep == 3280 then
        changeBoyfriendCharacter('bf-annie', 430, 370)
    end

    if curStep == 3344 then
        changeDadCharacter('dust-sans', -350, 100)
    end

    if curStep == 3408 then
        changeBoyfriendCharacter('bf-sans', 430, 370)
    end

    if curStep == 3472 then
        changeDadCharacter('taki', -10, 100)
        changeBoyfriendCharacter('sarvente-dark', 666, 205)
    end

    if curStep == 3728 then
        changeDadCharacter('tabi-crazy', -10, 150)
        changeBoyfriendCharacter('bf-exgf', 666, 100)
        fixTrail('tabiTrail')
    end

    if curStep == 3984 then
        changeDadCharacter('spooky', 61.15, 300)
        removeObject('tabiTrail')
    end

    if curStep == 4048 then
        changeBoyfriendCharacter('hank', 930, 250)
    end

   if curStep == 4112 then
        setActorAlpha(1, 'dad1')
        setActorAlpha(1, 'dad2')  
        followDadXOffset = 0
        newIcons = true
        swapIcons = false
    end

   if curStep == 4112 then
        setDefaultCamZoom(0.9)
        changeDadCharacter('calli', -100, -75) 
        changeDad1Character('coco', 350, -110) 
        changeDad2Character('rushia', 150, 290) 
        updateHealthbar('FFAF66CE', 'FFAF68CE')
        changeDadIconNew('holo-trio-tt')
    end

    if curStep == 4240 then
        setActorVisibility(true, 'boyfriend1')
        setActorVisibility(true, 'boyfriend2')   
        followBFXOffset = 0
    end

    if curStep == 4240 then
        changeBoyfriendCharacter('gura-amelia', 805, 135)
        changeBoyfriend1Character('haachama', 1300, 110)
        changeBoyfriend2Character('botan', 1070, 300) 
        updateHealthbar('FFAF66CE', 'FF0EAEFE')
        changeBFIconNew('holo-trio-bf')
    end

   if curStep == 4368 then
        changeDadCharacter('geese', -100, -75) 
        changeDad1Character('bf-cesar', 370, 200) 
        changeDad2Character('bf-sticky', 260, 300)
        updateHealthbar('FFAF66CE', 'FF0EAEFE')
    end

    if curStep == 4495 then
        changeBoyfriendCharacter('minishoey', 805, 45)
        changeBoyfriend1Character('ash', 1300, 20)
        changeBoyfriend2Character('cerbera', 1070, 370) 
        updateHealthbar('FFAF66CE', 'FF0EAEFE')
        changeBFIconNew('bb-trio')
    end

    if curStep == 4624 then
        changeDadCharacter('papyrus', -100, -75) 
        changeDad1Character('bf-frisk', 370, 200) 
        changeDad2Character('bf-sans', 260, 300)
        updateHealthbar('FFAF66CE', 'FF0EAEFE')
        changeDadIconNew('holo-trio-tt')
    end

    if curStep == 4640 then
        changeDadCharacter('zardy', -100, 75) 
        changeDad2Character('finn', 350, 10) 
        changeDad1Character('bf-spongebob', 150, 0) -- cuz da pibby version crash da game
        updateHealthbar('FFAF66CE', 'FFAF68CE')
    end

   if curStep == 4655 then
        changeDadCharacter('sarvente-dark', -100, 75) 
        changeDad1Character('ruv', 350, 10) 
        changeDad2Character('selever', 150, 90) 
        updateHealthbar('FFAF66CE', 'FFAF68CE')
        changeDadIconNew('holy-trio')
    end

   if curStep == 4688 then
        changeDadCharacter('ruby', -100, -35) 
        changeDad1Character('cj', 350, 20) 
        changeDad2Character('edd-ch', 150, 430) 
        updateHealthbar('FFAF66CE', 'FFAF68CE')
        changeDadIconNew('cj-two')
    end


   if curStep == 5008 then
        changeDadCharacter('grace', -100, 145) 
        changeDad1Character('bf-gf', 350, 260) 
        changeDad2Character('bf-nene', 150, 320)
        updateHealthbar('FFAF66CE', 'FFAF68CE')
    end

    if curStep == 4752 then
        changeBoyfriendCharacter('blantad-powers', 805, 135)
        changeBoyfriend1Character('nonsense-god', 1300, -100)
        changeBoyfriend2Character('sharv', 1070, 470) 
        updateHealthbar('FFAF66CE', 'FF0EAEFE')
    end

    if curStep == 4880 then
        changeBoyfriendCharacter('cassandra', 805, 175)
        changeBoyfriend1Character('nene', 1300, 330)
        changeBoyfriend2Character('pico', 1070, 470)
        updateHealthbar('FFAF66CE', 'FF0EAEFE')
    end

    if curStep == 4896 then
        changeBoyfriendCharacter('natsuki', 805, 155)
        changeBoyfriend1Character('sayori', 1300, 100)
        changeBoyfriend2Character('monika-real', 870, 150) 
        characterZoom('boyfriend2', 0.9)
        updateHealthbar('FFAF66CE', 'FF0EAEFE')
    end

    if curStep == 4912 then
        changeBoyfriendCharacter('lylace', 805, 325)
        changeBoyfriend1Character('neonight', 1300, 100)
        changeBoyfriend2Character('sebasy', 1170, 0) 
        updateHealthbar('FFAF66CE', 'FF0EAEFE')
    end

    if curStep == 4944 then
        changeBoyfriendCharacter('bf-aloe', 805, 250)
        changeBoyfriend1Character('bf-soft', 1300, 230)
        changeBoyfriend2Character('bf-updike', 1070, 370) --cuz it give less lag
        updateHealthbar('FFAF66CE', 'FF0EAEFE')
    end

end
