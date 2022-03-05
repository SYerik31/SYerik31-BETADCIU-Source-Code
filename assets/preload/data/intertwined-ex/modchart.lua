function start (song)
        changeDadIcon('cerbera-ex')  
    setActorAlpha(0, 'dad')
    setActorAlpha(0, 'dad2')
    setActorVisibility(false, 'boyfriend1')
    setActorVisibility(false, 'boyfriend2') 
    setActorAlpha(0, 'SkeptickSnake')
end



function beatHit (beat)

--    setActorAlpha(1, 'SkeptickSnake')

end

function stepHit (step)

    if curStep == 1 then
        setActorAlpha(1, 'SkeptickSnake')
    end

    if curStep == 48 then
        setActorAlpha(1, 'dad')
        setActorAlpha(0, 'dad1')
        changeDadCharacter('natsuki', 70, 300)
    end

    if curStep == 64 then
        changeBoyfriendCharacter('monika-real', 610, 180)
        characterZoom('boyfriend', 0.8)
    end

    if curStep == 80 then
        changeDadCharacter('bf-carol', -10, 450)
    end

    if curStep == 96 then
        changeBoyfriendCharacter('whitty', 640, 170)
    end

    if curStep == 144 then
        changeDadCharacter('hank', -40, 260)
    end

    if curStep == 176 then
        changeBoyfriendCharacter('gabe', 700, 270)
    end

    if curStep == 208 then
        changeDadCharacter('kou', 40, 370)
    end

    if curStep == 240 then
        changeBoyfriendCharacter('sayori', 800, 180)
    end

    if curStep == 272 then
        changeDadCharacter('cj', -80, 100)
    end

    if curStep == 290 then
        changeBoyfriendCharacter('bf-sonic', 700, 400)
    end

    if curStep == 336 then
        changeDadCharacter('happymouse', -80, 100)
    end

    if curStep == 353 then
        changeBoyfriendCharacter('baldi-angry', 800, 180)
    end

end
