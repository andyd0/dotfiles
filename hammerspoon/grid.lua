hs.grid.setGrid'2x2'
hs.grid.setMargins("0,0")
hs.window.animationDuration = 0

function getWin()
  return hs.window.focusedWindow()
end

--- Uses baseMove function from https://github.com/mtrpcic/hs-config
--- to be more like Magnet for arrow keys
function baseMove(x, y, w, h)
  return function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    -- add max.x so it stays on the same screen, works with my second screen
    f.x = max.w * x + max.x
    f.y = max.h * y
    f.w = max.w * w
    f.h = max.h * h
    win:setFrame(f, 0)
  end
end

--- arrows: move window
hs.hotkey.bind(hyper, 'left', baseMove(0, 0, 0.5, 1))
hs.hotkey.bind(hyper, 'right', baseMove(0.5, 0, 0.5, 1))
hs.hotkey.bind(hyper, 'down', baseMove(0, 0.5, 1, 0.5))
hs.hotkey.bind(hyper, 'up', baseMove(0, 0, 1, 0.5))

--- https://github.com/webpro/dotfiles/blob/master/config/hammerspoon/grid.lua
--- ikjl: resize window
hs.hotkey.bind(hyper, "i", function() hs.grid.resizeWindowShorter() end)
hs.hotkey.bind(hyper, "k", function() hs.grid.resizeWindowTaller() end)
hs.hotkey.bind(hyper, "j", function() hs.grid.resizeWindowThinner() end)
hs.hotkey.bind(hyper, "l", function() hs.grid.resizeWindowWider() end)

--- 234: resize grid
hs.hotkey.bind(hyper, "2", function() hs.grid.setGrid('2x2'); hs.alert.show('Grid set to 2x2'); end)
hs.hotkey.bind(hyper, "3", function() hs.grid.setGrid('3x3'); hs.alert.show('Grid set to 3x3'); end)
hs.hotkey.bind(hyper, "4", function() hs.grid.setGrid('4x4'); hs.alert.show('Grid set to 4x4'); end)

--- /: move window to next screen
hs.hotkey.bind(hyper, "/", function() local win = getWin(); win:moveToScreen(win:screen():next()) end)

--- ,: snap window to grid
hs.hotkey.bind(hyper, ",", function() hs.grid.snap(getWin()) end)

--- space: maximize window
hs.hotkey.bind(hyper, "space", function() hs.grid.maximizeWindow() end)

--- layout does not work with Spotlight names
local macbook = "Color LCD"
local iterm = hs.appfinder.appFromName("iTerm2")
local vscode = hs.appfinder.appFromName("Code")

local windowLayout = {
  {vscode, nil, macbook, hs.layout.left50,  nil, nil},
  {iterm,  nil, macbook, hs.layout.right50, nil, nil},
}

hs.hotkey.bind(hyper, '1', function()
  hs.application.launchOrFocus("Visual Studio Code")
  hs.application.launchOrFocus("iTerm")

  hs.layout.apply(windowLayout)
end)
