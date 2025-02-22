% TRIAL OVER
trials(t).trialEnd = GetSecs;
trials(t).averageTimeBetweenFlips = mean(flipTimestamps);
trials(t).trialTime = trials(t).trialEnd - trials(t).trialStart;
trials(t).totalPoints = points;

subject.totalFlips = subject.totalFlips + numOfFlips;
subject.totalTime = subject.totalTime + trials(t).trialTime;
subject.numOfTrials = subject.numOfTrials + 1;

drawColourTiles(fillCoords,numOfFlips,colourArr,Sc.window)
vars = drawGrid(Sc.window,vars,trials,t,1);
[trials(t).finalCj, trials(t).finalCjTime, ...
trials(t).cjLoc,trials(t).cjDidRespond] = ...
cjSlider(Sc,vars,cfg,fillCoords,numOfFlips,colourArr,trials,t,1);

if (trials(t).correct == 0)
    % Audio tone for incorrect answers.
    Beeper(1000,.4,.5);
end

%Screen('DrawText',Sc.window, trialText,vars.centerX,trialy,[0 0 0]);
Screen('Flip',Sc.window);
WaitSecs(1);