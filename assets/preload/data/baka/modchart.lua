function start (song)
    setActorAlpha(0, 'bakaOverlay')
    setActorAlpha(0, 'bakaOverlayMad')
end

function update (elapsed)

end

function beatHit (beat)

   if curBeat == 16 then
        --setActorAlpha(1, 'bakaOverlay')
    end
end

function stepHit (step)

    if curStep == 64 then
        setActorAlpha(1, 'bakaOverlay')
        changeDadCharacter('tabi', -20, 300)
    end

    if curStep == 70 then
        changeBoyfriendCharacter('bf-exgf', 660, 250)
    end

    if curStep == 128 then
        setActorAlpha(0, 'bakaOverlay')
        setActorAlpha(1, 'bakaOverlayMad')
        changeDadCharacter('bob2', -20, 300)
    end

    if curStep == 160 then
        changeBoyfriendCharacter('bob', 660, 470)
    end

    if curStep == 192 then
        changeDadCharacter('liz', -20, 420)
    end

    if curStep == 224 then
        changeBoyfriendCharacter('kou', 660, 420)
    end

    if curStep == 256 then
        changeDadCharacter('garcello', -20, 250)
    end

    if curStep == 272 then
        changeBoyfriendCharacter('bf-annie', 660, 500)
    end

    if curStep == 304 then
        changeDadCharacter('monika-real', -20, 280)
        characterZoom('dad', 0.95)
        changeStage('dokiclubroom3')
    end

    if curStep == 344 then
        changeBoyfriendCharacter('sayori', 780, 360)
        changeStage('dokiclubroom-empty')
    end

    if curStep == 376 then
        changeDadCharacter('cassandra', -20, 200)
        changeGFCharacter('gf-pico', 340, 100)
    end

    if curStep == 416 then
        changeBoyfriendCharacter('pico', 660, 450)
        changeGFCharacter('nogf', 340, 120)
    end

    if curStep == 448 then
        setActorAlpha(0, 'bakaOverlayMad')
        changeDadCharacter('mami', -20, 150)
    end

    if curStep == 476 then
        changeBoyfriendCharacter('kapi', 660, 150)
    end

    if curStep == 508 then
        changeBoyfriendCharacter('bf-aloe', 660, 450)
        changeGFCharacter('gf-nene', 340, 130)
    end

    if curStep == 540 then
        changeDadCharacter('miku', -20, 150)
    end

    if curStep == 576 then
        setActorAlpha(1, 'bakaOverlay')
        changeDadCharacter('sarvente', -20, 250)
    end

    if curStep == 608 then
        changeBoyfriendCharacter('ruv', 660, 200)
        changeGFCharacter('gf-selever', 340, 130)
    end

    if curStep == 632 then
        changeDadCharacter('selever', -20, 250)
        changeGFCharacter('gf-sarv', 340, 130)
    end

    if curStep == 704 then
        setActorAlpha(0, 'bakaOverlay')
        setActorAlpha(1, 'bakaOverlayMad')
        changeDadCharacter('taki', -20, 200)
    end

    if curStep == 736 then
        changeBoyfriendCharacter('bf-demoncesar', 660, 450)
        changeGFCharacter('gf-tea', 340, 120)
    end

    if curStep == 768 then
        changeDadCharacter('nikusa', -20, 100)
        changeBoyfriendCharacter('bf-cesar', 660, 450)
    end

    if curStep == 800 then
        changeBoyfriendCharacter('agoti', 660, 250)
        changeGFCharacter('nogf', 340, 130)
    end

    if curStep == 832 then
        changeDadCharacter('hd-senpai-angry', -20, 250)
    end

    if curStep == 864 then
        changeBoyfriendCharacter('tankman', 660, 400)
        changeDadCharacter('hd-senpai-giddy', -20, 250)
    end

    if curStep == 896 then
        changeDadCharacter('bf-gf', -20, 420)
    end

    if curStep == 902 then
        changeBoyfriendCharacter('bf', 660, 450)
    end

    if curStep == 964 then
        changeBoyfriendCharacter('blantad-watch', 680, 230)
    end

    if curStep == 992 then
        changeDadCharacter('dad', -20, 250)
        changeGFCharacter('gf', 340, 120)
    end

    if curStep == 1016 then
        setActorAlpha(0, 'bakaOverlayMad')
        changeBoyfriendCharacter('mom', 660, 250)
    end

end
