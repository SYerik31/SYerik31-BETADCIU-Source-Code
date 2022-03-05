function start (song)

end

local defaultHudX = 0
local defaultHudY = 0

local tvX = 0
local tvY = 0

local defaultWindowX = 0
local defaultWindowY = 0

local lastStep = 0

function update (elapsed)

end

function beatHit (beat)

end

function stepHit (step)

    if curStep == 192 then
         changeDadCharacter('exgf', 110, 155)
    end

    if curStep == 223 then
         changeBoyfriendCharacter('bf-gf', 1000, 500)
         changeGFCharacter('nogf', 300, 40)
    end

    if curStep == 256 then
         changeDadCharacter('agoti', 100, 145)
    end

    if curStep == 287 then
        changeBoyfriendCharacter('kapi-angry', 1000, 100)
        changeGFCharacter('gf-arcade', 300, 40)
    end    

    if curStep == 320 then
        changeDadCharacter('dad', 100, 145)
        changeGFCharacter('gf', 300, 145)
    end
 
    if curStep == 352 then
        changeBoyfriendCharacter('mom', 1000, 100)
    end

    if curStep == 384 then
        changeDadCharacter('whitty', 100, 145)
        changeGFCharacter('gf', 300, 145)
    end

    if curStep == 512 then
        changeBoyfriendCharacter('hex', 1000, 100)
        changeGFCharacter('nogf', 300, 40)
    end

    if curStep == 640 then
        changeDadCharacter('monika-real', 40 , 130)
        characterZoom('dad', 0.8)
    end

    if curStep == 768 then
        changeBoyfriendCharacter('natsuki', 1000, 325)
    end

    if curStep == 896 then
        changeDadCharacter('angrybob', 50, 400)
        characterZoom('dad', 1.00)
    end

    if curStep == 960 then
        changeBoyfriendCharacter('ron', 1000, 400)
    end

    if curStep == 1024 then
        changeDadCharacter('liz', 50, 400)
    end

    if curStep == 1088 then
        changeBoyfriendCharacter('kou', 1000, 400)
    end

    if curStep == 1152 then
        changeDadCharacter('mami', 80, 80)
    end

    if curStep == 1216 then
         changeBoyfriendCharacter('bf-aloe', 1000, 500)
         changeGFCharacter('gf-nene', 300, 40)
    end

    if curStep == 1280 then
        changeDadCharacter('exe', 100, 300)
    end

    if curStep == 1344 then
        changeBoyfriendCharacter('maijin', 1000, 250)
        changeGFCharacter('nogf', 300, 40)
    end

    if curStep == 1408 then
        changeDadCharacter('herobrine', 100, -20)
    end

    if curStep == 1472 then
        changeBoyfriendCharacter('impostor2', 1000, 550)
    end

end
