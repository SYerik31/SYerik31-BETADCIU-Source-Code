function start (song)
	print("Song then " .. song .. " @ " .. bpm .. " downscroll then " .. downscroll)
        changeDadCharacter('jack3-1', -150, 800)
        changeBoyfriendCharacter('disy', 1040, 800) --funni number lol
        changeGFCharacter('gf-table', 50, 800)
    setActorAlpha(0, 'dad1')
    setActorVisibility(false, 'boyfriend1') 
end


function beatHit (beat)

end

function stepHit (step)

        if curStep == 64 then
        changeDadCharacter('cj', -250, 700)
        changeDad1Character('jack3-1', -500, 800)
        setActorAlpha(1, 'dad1')
        end

        if curStep == 96 then
        changeBoyfriendCharacter('ruby', 1040, 700)
        end

        if curStep == 128 then
        changeDadCharacter('taeyai', -150, 700)
        end

        if curStep == 224 then
        changeDadCharacter('b3-gf-vampire', -150, 400)
        followDadXOffset = -80
        end

        if curStep == 160 then
        changeBoyfriendCharacter('blantad-watch', 1040, 700)
        end

        if curStep == 320 then
        changeDadCharacter('bf-aloe', -150, 960)       
        end

        if curStep == 384 then
        changeBoyfriendCharacter('botan-aloe', 1040, 900)
        end

        if curStep == 448 then
        changeDadCharacter('angry-senpai', -150, 700)
        changeBoyfriendCharacter('botan', 1040, 900)
        end

        if curStep == 512 then
        changeBoyfriendCharacter('monika-real', 1040, 700)
        end
        
        if curStep == 576 then
        changeDadCharacter('sky-mad', -150, 800)   
        changeBoyfriendCharacter('glitched-bob', 1040, 900)    
        end

        if curStep == 640 then
        changeDadCharacter('bf-nene', -150, 960)   
        changeBoyfriendCharacter('mom', 1040, 700)   
        end
        
        if curStep == 704 then
        changeDadCharacter('sunday', -150, 850)      
        end

        if curStep == 768 then
         changeBoyfriendCharacter('natsuki', 1070, 800)
        end

        if curStep == 832 then
        changeDadCharacter('taki', -150, 700)
        changeBoyfriendCharacter('sarvente', 1040, 700)
        end

        if curStep == 896 then
        changeDadCharacter('sonic', -150, 800)
        changeBoyfriendCharacter('soul-tails', 1070, 900)
        end

        if curStep == 912 then
        changeDadCharacter('sonic-forced', -150, 800)
        end

        if curStep == 945 then
        changeDadCharacter('sonic-mad', -150, 800)
        end

        if curStep == 960 then
        changeDadCharacter('cassette-girl', -150, 800)
        changeBoyfriendCharacter('tankman', 1070, 900)
        end

        if curStep == 1024 then
        changeDadCharacter('tord-ch', -150, 650)
        changeBoyfriendCharacter('edd-ch', 1070, 700) -- "ch" means challenge ;)
        end

end
