save([pwd '/' vars.rawdata_path num2str(subject.id) '/behaviour/' subject.fileName '_' num2str(round(t/vars.expBlockLength))],'trials', 'vars', 'subject', 't');
correct = [trials(1:t).correct];
text = ['You currently have ' num2str(points) ' points' newline newline 'Your accuracy up until this point is ' num2str((sum(correct)/t)*100) '%'];
text = [text newline newline newline 'You may now take a break. Click on the screen to continue.'];
DrawFormattedText(Sc.window, text,'center', 'center', [0 0 0]);
Screen('Flip', Sc.window);
WaitSecs(1);
hasconfirmed = false;
while ~hasconfirmed
    [x,y,buttons] = GetMouse;
    % If mouse button is clicked
    if(buttons(1)||buttons(2)||buttons(3))
        X = x;
        Y = y;
        while 1
            % Wait for mouse release.
            [x,y,buttons] = GetMouse; 
            if(~(buttons(1))&&~(buttons(2))&&~(buttons(3)))
                hasconfirmed = true;
                break;
            end
        end
    end
end