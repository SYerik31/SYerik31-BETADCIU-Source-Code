function start (song)

     changeBoyfriendCharacter('bf-wd', 730, 200)
     changeDadCharacter('hex-wd', -10, -100)
     changeGFCharacter('gf-wd', 230, -120)
        setDefaultCamZoom(1.10)
        characterZoom('dad', 0.86)
        characterZoom('bf', 0.60)
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

     if curStep == 3000 then
     changeBoyfriendCharacter('blantad-watch', 700, 230)
     changeDadCharacter('blantad-watch', -20, -130)
   end 



end

function stepHit (step)

     if curStep == 16 then
        setDefaultCamZoom(1.00)
   end

     if curStep == 32 then
        setDefaultCamZoom(0.96)
   end

     if curStep == 48 then
        setDefaultCamZoom(0.92)
   end

     if curStep == 64 then
        setDefaultCamZoom(0.88)
   end

     if curStep == 80 then
        setDefaultCamZoom(0.84)
   end

     if curStep == 96 then
        setDefaultCamZoom(0.80)
   end

     if curStep == 112 then
        setDefaultCamZoom(0.77)
   end

end
