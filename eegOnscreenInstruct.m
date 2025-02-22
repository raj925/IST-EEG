%% eegOnscreenInstruct.m
% Draw boxes and text to remind participants for the EEG version of the
% experiment that left click flips a tile, right click means the
% participant is choosing to answer. 
function eegOnscreenInstruct(win,vars)
    %Draw response boxes on screen:
    optionCoords = vars.optionCoords;
    Screen('FrameRect', win, [0,0,0], optionCoords(:,1));
    Screen('FrameRect', win, [0,0,0], optionCoords(:,2));
    Screen('DrawText', win, 'Flip Tile', (optionCoords(1,1)+optionCoords(3,1))/2, (optionCoords(2,1)+optionCoords(4,1))/2, [255,255,255]);
    Screen('DrawText', win, 'Answer', (optionCoords(1,2)+optionCoords(3,2))/2, (optionCoords(2,2)+optionCoords(4,2))/2, [255,255,255]);
end