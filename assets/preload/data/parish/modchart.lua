function start (song)

end

local defaultHudX = 0
local defaultHudY = 0

local defaultWindowX = 0
local defaultWindowY = 0

local lastStep = 0


function update (elapsed)
    local currentBeat = (songPos / 1000)*(bpm/60)
    hudX = getHudX()
    hudY = getHudY()
	
end

function beatHit (beat)

end

function stepHit (step)

    if curStep == 1 then   
        changeBoyfriendCharacter('ruv', 725, 50)     
  
    end

    if curStep == 129 then   
        changeGFCharacter('gf-sarv', 330, -30)     
        changeDadCharacter('whitty', 90, 100)  
    end

    if curStep == 195 then
        changeGFCharacter('gf-ruv', 215, -10)     
        changeBoyfriendCharacter('hex', 700, 100)
    end

    if curStep == 260 then
        changeStage('takiStage')
        changeDadCharacter('taki', 350, 300)
        changeGFCharacter('gf-tea', 750, 330)
        changeBoyfriendCharacter('hex', 1200, 350)
        setBFStaticNotes('taki')
       setupNoteSplash('-taki')  
    end

    if curStep == 324 then
        changeBoyfriendCharacter('bf-demoncesar', 1100, 600)
    end

    if curStep == 387 then
        changeStage('Stage')
        changeDadCharacter('dad', 100, 100)
        changeGFCharacter('gf', 330, 20)
        changeBoyfriendCharacter('bf-demoncesar', 900, 470)  
    end

    if curStep == 450 then
        changeBoyfriendCharacter('mom', 800, 100)
    end

    if curStep == 518 then
        changeGFCharacter('nogf', 330, 20)
        changeDadCharacter('bf-gf', 75, 280)
    end

    if curStep == 582 then
        changeBoyfriendCharacter('bf', 900, 470)
    end

    if curStep == 646 then
        changeStage('churchselever')
        changeGFCharacter('gf', 250, -50)
        changeDadCharacter('selever', -50, 35)
        changeBoyfriendCharacter('bf', 770, 450)
    end

    if curStep == 711 then
        changeBoyfriendCharacter('bf-soul', 770, 450)
        changeGFCharacter('nogf', 250, -50)
    end
end
