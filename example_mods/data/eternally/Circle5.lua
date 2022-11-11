local WindowDance = false
local SineElap = 0
local DanceAmt = 5 -- I recommend 3

function onCreate()
    setPropertyFromClass('openfl.Lib', 'application.window.y', 180)
    setPropertyFromClass('openfl.Lib', 'application.window.x', 320)
    windowy = getPropertyFromClass("openfl.Lib", "application.window.y")
    windowx = getPropertyFromClass("openfl.Lib", "application.window.x")
end

function onStepHit()
    if curStep >= 517 and curStep <= 640 then
        WindowDance = true
    end
    if curStep == 640 then
        WindowDance = false
    end
end

function onUpdatePost(elapsed)
    SineElap = SineElap + (elapsed * DanceAmt)

    if WindowDance == true then
        setPropertyFromClass('openfl.Lib', 'application.window.y', 1000*math.sin(SineElap)/10+windowy)
        setPropertyFromClass('openfl.Lib', 'application.window.x', 1000*math.cos(SineElap)/5+windowx)
    end
end    